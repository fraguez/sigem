class ChangeTypeStateVacation < ActiveRecord::Migration[5.0]
  def up
    change_table :vacations do |t|
      t.change :state, :string
    end
  end

  def down
    change_table :vacations do |t|
      t.change :state, :integer
    end
  end
end
