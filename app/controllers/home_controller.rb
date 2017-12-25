class HomeController < ApplicationController
  def index
    @articles = Article.pushed.order(created_at: 'DESC').limit(6)
  end

  def about
    @resume = Resume.first
  end

  def timeline
  end
end
