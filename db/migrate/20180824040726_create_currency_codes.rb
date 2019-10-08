class CreateCurrencyCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :currency_codes do |t|
      t.string :country
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
