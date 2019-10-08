class AddSymbolToUnit < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :symbol, :string
  end
end
