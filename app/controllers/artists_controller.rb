class ArtistsController < ApplicationController
    def index
        @artists = Artist.all 
    end

    def show
        @artist = Artist.find(params[:id]) 
    end

    def new
        @artist = Artist.new  
        # Creates a blank new user instance so a user can fill it out 
    end

    def create
        @artist = Artist.new(artist_params) 
        if @artist.save 
            redirect_to artist_path(@artist)
        else 
            render :new 
        end 
    end

    def edit
        @artist = Artist.find_by_id(params[:id])
    end

    def update
        @artist = Artist.find_by_id(params[:id])
        if @artist.update(artist_params)
            redirect_to artist_path(@artist)
        else 
            render :new 
        end 
    end
    
    private 

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end 

    # def artist_params(*args)
    #     params.require(:artist).permit(*args) 
    # end 
end


# Artist.create(params[:id])  
# This will not work because of ForbiddenAttribtuesError 
# With rails we have to create a whitelist of allowed parameters in order for that to work 
# Strong Params is the rails way of creating a whitelist. There is a whitelist element and a requirement element. 
# First we make sure that there is an :artist key, which is the require element. We pass in the key. 
# We must also include permit in order for it to work.  
# 