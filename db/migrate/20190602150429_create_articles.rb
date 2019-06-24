class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :photoURL
      t.string :decsription

      t.timestamps
    end
  end
end
