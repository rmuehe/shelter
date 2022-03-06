class ReservationsController < ApplicationController
  # def _form
  # end

  def create
    @provider = Provider.find(params[:provider_id])
    @reservation = @provider.reservations.create(reservation_params)
    @reservation.update(is_confirmed: false)
    redirect_to provider_path(@provider)
  end

  def update
    @user = User.find(params[:id])
    @reservation = @user.reservations.last
    @reservation.update(is_confirmed: true)
    redirect_to user_path(@user)
  end

  def edit
  end

  def index
  end

  def new
  end

  def show
  end

  def destroy
    @provider = Provider.find(params[:provider_id])
    @reservation = @provider.reservations.find(params[:id])
    @reservation.destroy
    redirect_to provider_path(@provider), status: 303
  end

  private
    def reservation_params
      params.require(:reservation).permit(:user_id, :provider_id, :date)
    end
end
