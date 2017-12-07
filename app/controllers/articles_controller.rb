class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all.order(created_at: 'DESC').page(params[:page])
  end
end
