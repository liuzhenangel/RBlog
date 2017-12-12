class Admin::ArticlesController < Admin::BaseController
  def index
    @articles = Article.all.order(created_at: 'DESC').page(params[:page])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to admin_articles_path
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = '更新成功'
      redirect_to admin_articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      flash[:notice] = '删除成功'
    else
      flash[:notice] = "删除失败, 原因: #{@article.errors.messages.to_s}"
    end
  end
  private
  def article_params
    params.require(:article).permit(:title, :subtitle, :content)
  end
end
