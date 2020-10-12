class ArtistsController < ApplicationController
    def self.controller_path
        "artists"
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        if @artist.save
        redirect_to artist_path(@artist)
        else  
            render :new
        end
    end

    def show
       # @artist = Artist.find(params[:id])
       set_artist
    end
    
    def edit
        set_artist
    end
    
    def update
        set_artist
        if @artist.update(artist_params)
            redirect_to artist_path(@artist)
        else 
            render :edit
        end
    end
    
    private

    def set_artist
        @artist = Artist.find(params[:id])
    end
    
    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
    
end
