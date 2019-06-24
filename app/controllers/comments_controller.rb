class CommentsController < ApplicationController

  def create
     @comment = Comment.new(comment_params)
     @article = Article.find(params[:article_id])
     @comment.article_id = @article.id
     @comment.user_id = session[:user_id]
     @comment.save(comment_params)
     redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = Comment.find_by(article_id: [@article.id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  def comment_params
    params.require(:comment).permit(:text, :user_id, :article_id )
  end
end
