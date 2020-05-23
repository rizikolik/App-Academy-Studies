class CatsController < ApplicationController
    def index
      @cats=Cat.all 
     
    end
   
    def show
        @cat=Cat.find(params[:id])
   
     
    end
    def create
    end
    def update
    end
    def delete
    end
   
end
