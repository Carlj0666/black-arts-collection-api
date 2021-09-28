class ArtistsController < ApplicationController
    def index
        artists = Artist.all
        render json: artists
    end

    def show
        artist = Artist.find(params[:id])
        render json: ArtSerializer.new(artist)
    end


end
