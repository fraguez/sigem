class CreateProvidermanagers < ActiveRecord::Migration[5.0]
  def change
    create_table :providermanagers do |t|
      t.integer :identificationcard
      t.string :name
      t.string :lastname
      t.date :birthday
      t.references :sex, foreign_key: true
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
