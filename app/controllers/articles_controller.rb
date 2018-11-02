class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    if @article.draft && !session[:login]
      flash[:errors] = '访问链接不存在'
      redirect_to root_path
    end
    @article.increment!(:visit, 1)
  end

  def index
    @articles = Article.pushed.order(created_at: 'DESC').page(params[:page])
  end
end
