class CatsController < ApplicationController
    def index 
        @all=Cat.all
    end
    def new
        @cat = Cat.new
        render "new"
    end
    def edit
       @cat=Cat.find(params[:id])
        render "edit"
    end
    def update
        @cat=Cat.find(params[:id])
        if @cat.update_attributes(cats_params)
            redirect_to cat_url(@cat)
          else
            flash.now[:errors] = @cat.errors.full_messages
            render :edit
          end
    end
    def create
        @cat = Cat.new(cats_params)
        if @cat.save
          redirect_to "index"
        else
          flash.now[:errors] = @cat.errors.full_messages
          render :new
        end
    end
    def show
        @cat=Cat.find(params[:id])
       render "show"
    end
    def cats_params
        params.require(:cat).permit(:age, :birth_date, :color, :description, :name, :sex)
    end
end


