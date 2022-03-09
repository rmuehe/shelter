class AddProviderIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :provider_id, :integer
    add_index :users, :provider_id
  end
end
