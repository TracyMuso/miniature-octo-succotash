class ArticlesController < ApplicationController

    def index
        @articles = Article.search(params[:search_term])
        @poular_searches = QueryLog.trending

        render json: @articles
    end
end
