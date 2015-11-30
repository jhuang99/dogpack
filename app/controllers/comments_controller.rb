class CommentsController < ApplicationController
  	# before_action :find_commentable, only: :create
  before_action :authenticate_dog!
  before_action :find_commentable, only: :create
  respond_to :js

  def new
    @comment = Comment.new
    @comment.commentable_type = "post"

  end

  def create
    @comment = @commentable.comments.new do |comment|
      comment.comment = params[:comment][:comment]
      comment.dog_id = current_dog.id
    end
    @comment.save
    redirect_to authenticated_root_path
  end

  def destroy
    @comment = current_dog.comments.find(params[:id])
    @comment_id = params[:id]
    @comment.destroy
  end

  def index
    @comments = Comment.all
  end

  private
  def find_commentable
    @commentable_type = params[:comment][:commentable_type].classify
    @commentable = @commentable_type.constantize.find(params[:post_id])
  end

end
