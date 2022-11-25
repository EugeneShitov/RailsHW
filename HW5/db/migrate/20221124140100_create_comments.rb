class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :status, default: 0
      t.string :body
      t.integer :author_id
      t.integer :article_id

      t.timestamps
    end
  end
end
