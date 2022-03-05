class AddRequestToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :request_today, :boolean
  end
end
