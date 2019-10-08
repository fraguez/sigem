class CreateVacations < ActiveRecord::Migration[5.0]
  def change
    create_table :vacations do |t|
      t.string :detail
      t.date :startdate
      t.date :enddate
      t.integer :state
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
