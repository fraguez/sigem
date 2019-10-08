class CreateCustomermanagers < ActiveRecord::Migration[5.0]
  def change
    create_table :customermanagers do |t|
      t.references :customer, foreign_key: true
      t.integer :identificationcard
      t.string :name
      t.string :lastname
      t.date :birthday
      t.references :sex, foreign_key: true

      t.timestamps
    end
  end
end
