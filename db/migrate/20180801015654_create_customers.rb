class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :legalcertificate
      t.string :name
      t.string :businessname
      t.references :customer_type, foreign_key: true
      t.references :city, foreign_key: true
      t.references :state, foreign_key: true
      t.references :district, foreign_key: true
      t.string :othersing

      t.timestamps
    end
  end
end
