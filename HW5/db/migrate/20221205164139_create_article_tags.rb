class CreateArticleTags < ActiveRecord::Migration[7.0]
  def change
    create_table :article_tags do |t|
      t.belongs_to :article, foreign_key: true
      t.belongs_to :tag, foreign_key: true
    end
  end
end
