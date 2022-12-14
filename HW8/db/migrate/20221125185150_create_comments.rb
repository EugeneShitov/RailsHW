class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :status, default: 'unpublished'
      t.string :body
      t.references :author, foreign_key: true
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
