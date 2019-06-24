class CreateParameters < ActiveRecord::Migration[5.2]
  def change
    create_table :parameters do |t|
      t.string :description
      t.belongs_to :article, foreign_key: true

      t.timestamps
    end
  end
end
