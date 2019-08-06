class ArticlesController < ApplicationController
  before_action :show, only: [:edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id].to_i)
  end

  def new
    @article = Article.new
  end

  def create
    article_new = Article.create(strong_params)
    redirect_to article_path(article_new)
  end

  def edit
    # @article = Article.find(params[:id].to_i)
  end

  def update
    # @article = Article.find(params[:id].to_i)
    @article.update(strong_params)
    redirect_to article_path(@article)
  end

  def destroy
    # @article = Article.find(params[:id].to_i)
    @article.destroy
    redirect_to articles_path
  end

  private

  def strong_params
    params.require(:article).permit(:title, :content)
  end
end
