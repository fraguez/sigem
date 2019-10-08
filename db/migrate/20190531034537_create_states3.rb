class CreateStates3 < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.integer :code
      t.string :name
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
