class CatsController < ApplicationController
    def index 
        @all=Cat.all
    end
    def new
        render "new"
    end
    def create
        @cat=Cat.create(cat_params)
    end
    def show
       render "show"
    end
    def cats_params
        params.require(:cat).permit(:id,:name,:color,:sex,:description)
    end
end


