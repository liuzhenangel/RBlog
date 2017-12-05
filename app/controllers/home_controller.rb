class HomeController < ApplicationController
  def index
    @articles = Article.order(created_at: 'DESC').limit(10)
    @title = 'Rina.Liu'
    @subtitle = '一名女程序媛'
  end

  def about
    @title = 'About Me'
    @subtitle = '一名女程序媛'
  end

  def timeline
    @title = '时间线'
    @subtitle = '工作经历'
  end
end
