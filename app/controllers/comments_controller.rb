class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def confirm
    @comment = Comment.new(content: params[:comment][:content])
  end

  def create
    @comment = Comment.new(content: params[:comment][:content])
    if @comment.valid?
      @comment.save
      redirect_to comments_path
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(content: params[:comment][:content])
    redirect_to comments_path
  end

end
