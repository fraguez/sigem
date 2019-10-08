class CreateCustomermanagerdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :customermanagerdetails do |t|
      t.string :officenumber
      t.string :extension
      t.string :cellnumber
      t.string :faxnumber
      t.string :officialemail
      t.string :secundaryemail
      t.references :customermanager, foreign_key: true

      t.timestamps
    end
  end
end
