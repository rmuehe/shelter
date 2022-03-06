class CreateProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :phone
      t.string :website
      t.text :summary
      t.string :serving

      t.timestamps
    end
  end
end
