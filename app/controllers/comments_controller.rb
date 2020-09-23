class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def confirm
    @comment = Comment.new(comment_params)
  end

  def create
    @comment = Comment.new(comment_params)
    if params[:back]
      render :new
    else
      if @comment.valid?
        @comment.save
        redirect_to comments_path
      else
        render :new
      end
    end
  end

  def destroy
    @comment.destroy
    redirect_to comments_path
  end

  def edit
    @comment
  end

  def update
    if @comment.update(comment_params)
      redirect_to comments_path
    else
      render :edit
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
