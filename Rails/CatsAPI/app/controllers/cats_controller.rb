class CatsController < ApplicationController
    def index
      @cats=Cat.all 
     
    end
    def new
    @cat=Cat.new  
    end
    def edit
      @cat=Cat.find(params[:id])
    end
   
    def show
        @cat=Cat.find(params[:id])
   
     
    end
    def create
      
      @cat=Cat.create(cat_params)
      if @cat.save
     redirect_to @cat
    else
      render 'new'
     end

    end
    def update
    end
    def delete
    end
    def cat_params
      params.require(:cat).permit(:name, :color)
    end
   
end
