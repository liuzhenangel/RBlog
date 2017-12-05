class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @title = @article.title
    @subtitle = @article.subtitle
  end

  def index
    @title = '所有文章'
    @subtitle = '关于生活，技术'
  end
end
