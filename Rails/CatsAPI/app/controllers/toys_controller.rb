class ToysController < ApplicationController
    def index
    @cat=Cat.find(params[:cat_id])
    @toys=@cat.toys
    end
    def new
       
     
    end
    def show
     @toy=Toy.find(params[:id])
    end
    def edit
    end
    def create
     
        @cat=Cat.find(params[:cat_id])
        @toy=@cat.toys.create(toy_params)
        
            redirect_to cat_path(@cat)
    
    end
    def update
    end
    def delete
    end
    private
    def toy_params
        params.require(:toy).permit(:name, :ttype)
    end
end
