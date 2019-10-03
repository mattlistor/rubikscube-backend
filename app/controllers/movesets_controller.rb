class MovesetsController < ApplicationController
    def index
        movesets = Moveset.all
        render json: movesets
    end
    def show
        moveset = Moveset.find(params[:id])
        render json: moveset
    end
    def create
        moveset = Moveset.new(moveset_params)
        if moveset.save
            render json: moveset
        else
            render json: {message: "error 406", errors: booking.errors.full_messages}, status: 406
        end
    end

    def destroy
        moveset = Moveset.find(params[:id])
        moveset.destroy

        render json: {message: "Successfully deleted!"}
    end

    private 

    def moveset_params
        params.require(:moveset).permit(:set, :user_id)
    end
end
