class ArtsController < ApplicationController
    def index
        arts = Art.all
        render json: ArtSerializer.new(arts, {include: [:artist]})
    end

    def show
        art = Art.find(params[:id])
        render json: ArtSerializer.new(art, {include: [:artist]})
    end

end
