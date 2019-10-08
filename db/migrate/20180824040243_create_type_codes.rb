class CreateTypeCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :type_codes do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
