class TracksController < ApplicationController
    before_action :set_track, except: [:index, :create]
    
    rescue_from Exception do |e|
        render json: { error: e }, status: 404
    end


    def index 
        render json: Track.all
    end

    def show 
        render json: @track
    end

    def create 
        render json: Track.create(track_params)
    end

    def update 
        if @track.update(track_params)
                render json: @track
        else
            render json: { error: "Failed to update track"}, status: :unprocessable_entity
        end
    end

    def destroy
        if @track.destroy
                render status: :no_content
        else
            render json: { error: "Failed to destroy track"}, status: :unprocessable_entity
        end
    end

    private

    def set_track
        @track = Track.find(params[:id])
    end

    def track_params
        params.permit(:title, :artist, :url, :tuning_id)
    end
end
