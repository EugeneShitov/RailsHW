class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :status
      t.string :body
      t.references :author_id
      t.references :post_id

      t.timestamps
    end
  end
end
