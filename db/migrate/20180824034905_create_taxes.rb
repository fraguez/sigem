class CreateTaxes < ActiveRecord::Migration[5.0]
  def change
    create_table :taxes do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
