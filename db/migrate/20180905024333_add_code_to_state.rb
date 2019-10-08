class AddCodeToState < ActiveRecord::Migration[5.0]
  def change
  	add_column :states, :code, :integer
  end
end
