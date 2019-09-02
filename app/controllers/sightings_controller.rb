class SightingsController < ApplicationController

    def index
        sightings = Sighting.all
        render json: sightings
    end

    def show
        sighting = Sighting.find_by(id: params[:id] )
        if sighting
           render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
        else 
            render json: {message: "THAT BIRD HAS NOT BEEN SEEN"}
        end
    end
end
