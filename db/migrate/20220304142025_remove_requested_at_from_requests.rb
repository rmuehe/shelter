class RemoveRequestedAtFromRequests < ActiveRecord::Migration[6.1]
  def change
    remove_column :requests, :requested_at, :datetime
  end
end
