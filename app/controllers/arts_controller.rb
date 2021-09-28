class ArtsController < ApplicationController
    def index
        arts = Art.all
        render json: arts.to_json(except: [:created_at, :updated_at], include: {artist: {only: [:name]}})
    end
end
