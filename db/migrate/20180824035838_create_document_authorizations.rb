class CreateDocumentAuthorizations < ActiveRecord::Migration[5.0]
  def change
    create_table :document_authorizations do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
