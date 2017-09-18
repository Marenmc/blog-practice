class CreateCommments < ActiveRecord::Migration[5.1]
  def change
    create_table :commments do |t|
      t.string :commenter
      t.text :body
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
