class AddRequestTodayToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :request_today, :boolean
  end
end
