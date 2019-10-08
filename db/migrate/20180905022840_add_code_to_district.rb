class AddCodeToDistrict < ActiveRecord::Migration[5.0]
  def change
  	add_column :districts, :code, :integer
  end
end
