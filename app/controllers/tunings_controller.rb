class TuningsController < ApplicationController
    before_action :set_tuning, except: [:index, :create]
    
    rescue_from Exception do |e|
        render json: { error: e }, status: 404
    end


    # Renders all Tunings from database as JSON when called upon
    def index 
        render json: Tuning.all
    end

    # Using the before action set tuning - @tuning assigned to Tuning.find(params[:id])
    def show 
        render json: @tuning
    end

    # Will create a new tuning with the given params from the post request
    def create 
        render json: Tuning.create(tuning_params)
    end

    # Performs a patch/put request. If tuning_params is truthy then makes a patch request with the given params
    # If falsy then render an error
    def update 
        if @tuning.update(tuning_params)
                render json: @tuning
        else
            render json: { error: "Failed to update tuning"}, status: :unprocessable_entity
        end
    end

    # Same Same as update
    def destroy
        if @tuning.destroy
                render status: :no_content
        else
            render json: { error: "Failed to destroy tuning"}, status: :unprocessable_entity
        end
    end

    private

    def set_tuning
        @tuning = Tuning.find(params[:id])
    end

    def tuning_params
        params.permit(:name)
    end
end
