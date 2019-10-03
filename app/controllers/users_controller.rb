class UsersController < ApplicationController 
    def index
        users = User.all
        render json: users
    end
    def show
        user = User.find(params[:id])
        render json: user
    end
    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {message: "error 406", errors: booking.errors.full_messages}, status: 406
        end
    end
    private 

    def user_params
        params.require(:user).permit(:name)
    end
end
