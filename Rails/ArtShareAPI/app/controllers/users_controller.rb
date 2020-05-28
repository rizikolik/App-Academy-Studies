class UsersController < ApplicationController
    def index
        if params[:query]
            @users = User.where('username LIKE ?', "%#{params[:query]}%")
        else

            @users=User.all 
        end
        render @users
    end
    def show
        @user=User.find(params[:id])
        render @user
    end
    def new
    end
    def create
        @user=User.new(user_params)
        if @user.save
            render json:@user
        else
            @user.errors.full_messages.each do |err|
                flash[:danger] =err
            end
        end
       
    end
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
    
        render @user
    end
    def destroy
        @user=User.find(params[:id])
        @user.destroy
        render @users 
    end
    

    private
    def user_params
       params.require(:user).permit(:username)
    end
end


