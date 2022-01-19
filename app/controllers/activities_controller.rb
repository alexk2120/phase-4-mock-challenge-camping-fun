class ActivitiesController < ApplicationController


 def index
   activities = Activity.all
   render json: activities 
    
 end

 def show
  activities = Activity.find_by(id: params[:id])
  if activities
    render json: activities
  else 
    render json: {error: "activity not found"}, status: :not_found
  end

   
 end
end
