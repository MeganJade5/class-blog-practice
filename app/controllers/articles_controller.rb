class ArticlesController < ApplicationController
    def index
        @time = Time.now
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(title: "This is a title", body: "blah", importance: 9)
       
        if @article.save
            redirect_to_articles_path
        else
            render :new
        end
    end

    private 
    def article_params
        params.require(:article).permit(:title, :body, :importance)
    end
end
