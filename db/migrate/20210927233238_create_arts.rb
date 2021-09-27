class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :link
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
