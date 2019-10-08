class CreateTypeDocumentReferences < ActiveRecord::Migration[5.0]
  def change
    create_table :type_document_references do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
