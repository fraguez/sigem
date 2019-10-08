class CreateDistricts3 < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.integer :code
      t.string :name
      t.references :state, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
