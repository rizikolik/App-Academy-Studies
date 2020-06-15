class CatsController < ApplicationController
    def index
        @all=Cat.all
        render "index"
end
