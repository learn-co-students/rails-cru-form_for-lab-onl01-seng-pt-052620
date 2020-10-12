class GenresController < ApplicationController
    
    def new
        @genre = Genre.new
    end

    def create 
        @genre = Genre.new(genre_params)
        if @genre.save
        redirect_to genre_path(@genre)
        else  
            render :new
        end
    
    end


    def show
        set_genre
    end

    def edit
        set_genre
    end

    def update 
        set_genre 
        if @genre.update(genre_params)
            redirect_to genre_path(@genre)
        else
            render :edit
        end
    end




    private 
    def set_genre
        @genre = Genre.find(params[:id])
    end

    def genre_params
        params.require(:genre).permit(:name)
    end
end
