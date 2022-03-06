class RequestsController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        #creates a request if there's not been one today or ever 
        if !@user.requests.last 
          @user.requests.create(is_approved: false)  
        elsif @user.requests.last.created_at.localtime.to_date != Time.now.localtime.to_date    
           @user.requests.create(is_approved: false)  
        end
        redirect_to user_path(@user) #, notice: "You have requested a reservation today"
    end

    def update
        @user = User.find(params[:user_id])
        @user.requests.last.update(is_approved: true)
        @provider = Provider.find(params[:id])
        redirect_to provider_path(@provider)
    end

    def destroy
        @user = User.find(params[:user_id])
        if !@user.requests.last
            redirect_to user_path(@user), notice: "No reservations to cancel"
        elsif @user.requests.last.created_at.localtime.to_date == Time.now.localtime.to_date
            @user.requests.last.destroy
            redirect_to user_path(@user), alert: "Reservation request cancelled"
        else
            redirect_to user_path(@user), notice: "No reservations to cancel today"
        end
    end
end
