class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.references :user
      t.datetime :requested_at

      t.timestamps
    end
  end
end

# class CreateRequests < ActiveRecord::Migration[6.1]
#   def change
#     create_table :requests do |t|
#       t.references :user
#       t.datetime :requested_at

#       t.timestamps
#     end
#     add_index :requests, :user_id
#   end
# end