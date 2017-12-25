class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @article.increment!(:visit, 1)
  end

  def index
    @articles = Article.pushed.order(created_at: 'DESC').page(params[:page])
  end
end
