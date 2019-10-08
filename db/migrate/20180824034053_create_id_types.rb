class CreateIdTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :id_types do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
