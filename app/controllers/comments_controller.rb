class CommentsController < ApplicationController
  	# before_action :find_commentable, only: :create
  before_action :authenticate_dog!
  before_action :find_commentable, only: :create
  respond_to :js

  def new
    @comment = Comment.new
    @comment.commentable_type = "post"
    @comment.post_id = params[:post_id]

  end

  def create
    @comment = @commentable.comments.new do |comment|
      comment.comment = params[:comment][:comment]
      comment.dog_id = current_dog.id
      comment.post_id = comment.commentable_id
    end
    @comment.save
    redirect_to post_path(params[:post_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment_id = params[:id]
    @comment.destroy
    redirect_to :back
  end
  def show
  end

  def index
    @comments = Comment.all
  end

  def edit
  	@comment = Comment.find(params[:id])
  end

  private
  def find_commentable
    @commentable_type = params[:comment][:commentable_type].classify
    @commentable = @commentable_type.constantize.find(params[:post_id])
  end

end
