class BlogPostsController < ApplicationController 
  before_action :authenticate_user!, except: [:index, :show]
  #before_action :set_blog_post, only: [:show, :edit, :update, :destroy]
  # I am reusing same line in all actions that's above mentioned. So I am using callback
  before_action :set_blog_post, except: [:index, :new, :create]
 

  def index
   @blog_posts = user_signed_in? ? BlogPost.all.sorted : BlogPost.published.sorted
  end

  def show
  end

  def new
    # create new blogpost and It will save in memory not in database it generate a 
    #form and match them with database column
    @blog_post = BlogPost.new
  end

  def create 
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post
    else  
      render :new, status: :unprocessable_entity
    end    
  end

  def edit
  end

  def update
    @blog_post = BlogPost.find(params[:id])
    if @blog_post.update(blog_post_params)
        redirect_to @blog_post
    else  
        render :edit, status: :unprocessable_entity 
    end
  end

  def destroy 
    @blog_post.destroy 
    redirect_to root_path, notice: "blog was successfully deleted."
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :body, :published_at)
  end

  def set_blog_post
    @blog_post =  user_signed_in? ? BlogPost.find(params[:id]) : BlogPost.published(params[:id]) 
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

end