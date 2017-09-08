class CreateDiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :diaries do |t|
      t.string :title
      t.string :name
      t.integer :weather
      t.text :content

      t.timestamps
    end
  end
end
