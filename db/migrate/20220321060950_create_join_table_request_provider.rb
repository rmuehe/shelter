class CreateJoinTableRequestProvider < ActiveRecord::Migration[6.1]
  def change
    create_join_table :requests, :providers do |t|
      t.index [:request_id, :provider_id]
      t.index [:provider_id, :request_id]
    end
  end
end
