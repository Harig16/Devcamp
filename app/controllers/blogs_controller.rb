class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy toggle_status]
  layout 'blog'
  access all: [:show, :index], user: {except: [:destroy, :new, :edit, :create, :update, :toggle_status]}, site_admin: :all
  # GET /blogs or /blogs.json
  def index
    #@blogs = Blog.special_blogs
    if logged_in?(:site_admin)
      @blogs = Blog.recent.paginate(page: params[:page], per_page: 5)
    #debugger
    else
      @blogs = Blog.published.recent.paginate(page: params[:page], per_page: 5)
    end
    @page_title = "Blogs"
  end

  # GET /blogs/1 or /blogs/1.json
  def show
    unless logged_in?(:site_admin)
      redirect_to blogs_path, notice: "Please login"
    else
      @page_title = @blog.title
    end
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)
    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: "Blog was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: "Blog was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: "Blog was successfully destroyed." }
    end
  end

  def toggle_status
    @blog.draft? ? @blog.published! : @blog.draft!
    redirect_to blogs_url, notice: "Blog was successfully Updated."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :body, :topic_id)
    end
end
