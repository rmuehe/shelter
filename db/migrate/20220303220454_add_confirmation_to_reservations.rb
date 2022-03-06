class AddConfirmationToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :is_confirmed, :boolean
  end
end
