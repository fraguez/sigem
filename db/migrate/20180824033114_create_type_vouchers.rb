class CreateTypeVouchers < ActiveRecord::Migration[5.0]
  def change
    create_table :type_vouchers do |t|
      t.string :name
      t.string :label
      t.string :acronym
      t.string :xmlSchema

      t.timestamps
    end
  end
end
