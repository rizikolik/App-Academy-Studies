class ToysController < ApplicationController
    def index
    @cat=Cat.find(params[:cat_id])
    @toys=@cat.toys
    end
end
