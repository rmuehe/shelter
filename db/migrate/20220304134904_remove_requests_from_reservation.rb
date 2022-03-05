class RemoveRequestsFromReservation < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :request_at, :datetime
    remove_column :reservations, :request_today, :boolean
  end
end
