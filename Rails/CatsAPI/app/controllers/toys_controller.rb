class ToysController < ApplicationController
    def index
    @cat=Cat.find(params[:cat_id])
    @toys=@cat.toys
    end
    def new
        @cat=Cat.find(params[:cat_id])
     @toy=Toy.new
       
    end

    def show
     @toy=Toy.find(params[:id])
    end
    def edit
    end
    def create
     puts "=================================="
     puts params[:cat_id]

     puts "=============================="
        @cat=Cat.find(params[:cat_id])
        @toy=@cat.toys.create(toy_params)
        if @toy.save
       redirect_to @cat
      else
        render 'new'
       end
  
      end
    def update
    end
    def delete
    end
    def toy_params
        params.require(:toy).permit(:name, :ttype,:cat_id)
    end
end
