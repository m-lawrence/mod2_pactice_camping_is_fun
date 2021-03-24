class CamperActivitiesController < ApplicationController

    def new
        @camper_activity = CamperActivity.new
    end

    def create
        @camper_activity = CamperActivity.create(camper_activity_params)
        @camper = @camper_activity.camper
        redirect_to camper_url(@camper)

    end

    private

    def camper_activity_params
        params.require(:camper_activity).permit(:camper_id, :activity_id, :time)
    end

end
