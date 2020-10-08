class SongsController < ApplicationController
    
    def index
        @songs = Song.all
    end
    
    
    def new
        @song = Song.new 
     end
 
     def create
         @song = Song.create(song_params)
         if @song.save
            redirect_to song_path(@song)
         else
            render :new
         end
     end

    def show
        set_song
        @artist = @song.artist
        @genre = @song.genre
    end

    def edit
        set_song
    end

    def update
        set_song
        if @song.update(song_params)
          redirect_to song_path(@song)
        else
            render :edit
        end
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)  # how do we get these from forms?
    end


    def set_song
        @song = Song.find(params[:id])
    end

end
