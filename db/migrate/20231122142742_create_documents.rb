class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.string :title
      t.text :content
      t.string :topic

      t.timestamps
    end
  end
end
