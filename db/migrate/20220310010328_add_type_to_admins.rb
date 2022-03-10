class AddTypeToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :type, :string
  end
end
