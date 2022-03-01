class ReservationsController < ApplicationController
  # def _form
  # end

  def create
    @provider = Provider.find(params[:provider_id])
    @reservation = @provider.reservations.create(reservation_params)
    redirect_to provider_path(@provider)
  end

  def edit
  end

  def index
  end

  def new
  end

  def show
  end

  private
    def reservation_params
      params.require(:reservation).permit(:user_id, :provider_id, :date)
    end
end
