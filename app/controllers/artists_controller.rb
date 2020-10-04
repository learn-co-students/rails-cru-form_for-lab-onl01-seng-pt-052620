class ArtistsController < ApplicationController
    def create 
        @artist = Artist.new(artists_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def new
    end

    def edit 
        @artist = Artist.find(params[:id])
    end 

    def update 
        @artist = Artist.find(params[:id])
        @artist = Artist.update(artists_params)
        redirect_to artist_path(@artist)
    end

    def show
        @artist = Artist.find(params[:id]) 
    end

    def artists_params
        params.require(:artist).permit(:name, :bio)
    end
end
