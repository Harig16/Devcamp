class TopicController < ApplicationController
  layout 'blog'

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.paginate(page: params[:page], per_page: 5)
    else
      @blogs = @topic.blogs.published.recent.paginate(page: params[:page], per_page: 5)
    end

  end
end
