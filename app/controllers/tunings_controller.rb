class TuningsController < ApplicationController
    before_action :set_tuning, except: [:index, :create]
    
    rescue_from Exception do |e|
        render json: { error: e }, status: 404
    end


    def index 
        render json: Tuning.all
    end

    def show 
        render json: @tuning
    end

    def create 
        render json: Tuning.create(tuning_params)
    end

    def update 
        if @tuning.update(tuning_params)
                render json: @tuning
        else
            render json: { error: "Failed to update tuning"}, status: :unprocessable_entity
        end
    end

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
