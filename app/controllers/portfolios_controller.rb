class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy, :move]
  layout 'portfolio'
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :edit, :create, :update, :move]}, site_admin: :all
  def index
    #@portfolio_items = Portfolio.all
    @portfolio_items = Portfolio.by_position
    @page_title = "Portfolios"
  end

  def angular
    @angular_items = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Your Portfolio is live." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Portfolio was successfully destroyed." }
    end
  end

  def move
    @portfolio_item.update(position: params[:position])
    head :ok
  end

  private

    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :sub_title, 
                                        :body, 
                                        technologies_attributes: [:name]
                                       )
    end  
    
    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end
end
