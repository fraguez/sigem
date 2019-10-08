class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.integer :identificationcard
      t.string :name
      t.string :lastname
      t.date :birthday
      t.references :sex, foreign_key: true
      t.date :admissiondate
      t.date :departuredate
      t.decimal :salary

      t.timestamps
    end
  end
end
