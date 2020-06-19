class CatsController < ApplicationController
    def index 
        @all=Cat.all
    end
    def new
        render "new"
    end
    def edit
       @cat=Cat.find(params[:id])
        render "edit"
    end
    def update
        @cat=Cat.find(params[:id])
        if @cat.update_attributes(cat_params)
            redirect_to cat_url(@cat)
          else
            flash.now[:errors] = @cat.errors.full_messages
            render :edit
          end
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


