class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def new
       @artist = Artist.new 
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)

    end

    

    def show
      set_artist
     "artists" 
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        set_artist
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end
    

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end


    # def artist_params
    #     params.require(:artist).permit(*args)
    # end

    def set_artist
      @artist = Artist.find(params[:id])  
    end
    
end
