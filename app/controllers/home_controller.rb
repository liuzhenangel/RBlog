class HomeController < ApplicationController
  def index
    @articles = Article.all.order(created_at: 'DESC').limit(6)
  end

  def about
    @resume = Resume.first
  end

  def timeline
  end
end
