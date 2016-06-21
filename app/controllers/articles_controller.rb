class ArticlesController < ApplicationController
  
  before_action :admin_auth, only: [:edit, :update, :new, :create]
  before_action :find_article, only: [:show, :edit, :update]

  def new
  @article = Article.new
  end

def edit
end

  def show
  end

  def index
  @articles = Article.all
  end

def create 
@article = Article.create(article_params)

if @article.save
redirect_to @article
else
	redirect_to articles_path
end
 end

def update
@article.update(article_params)
if @article.save
redirect_to @article
 else
  redirect_to articles_path
 end
end

private

def find_article
@article = Article.find(params[:id])
end 

def article_params
params.require(:article).permit(:title, :content)
end

end
