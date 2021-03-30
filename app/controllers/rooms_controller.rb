class RoomsController < ApplicationController

    def home
        
    end

    def index
        @rooms = Room.search(params[:search])
        
    end

    def keyword
        @rooms = Room.keyword_search(params[:search])
    end

    def new
        @room = Room.new
    end


    def create
        @room = Room.new(room_params)
        @room.user_id = current_user.id
        if params[:room_image]
            @room.room_image = "#{@room.id}.jpg"
            image = params[:room_image]
            File.binwrite("public/room_images/#{@room.room_image}",image.read)
        end
        if @room.save
            redirect_to "/rooms"
        else
            render "/rooms/new"
        end
    end

    def show
        @room = Room.find(params[:id])
        @reservation = Reservation.new
    end


    private
    def room_params
        params.require(:room).permit(:name, :introduction, :cost, :address, :room_image, :user_id)
    end

end
