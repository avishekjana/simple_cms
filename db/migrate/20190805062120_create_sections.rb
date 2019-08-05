class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.belongs_to :page, foreign_key: true
      t.string :name
      t.string :content_type
      t.text :content
      t.boolean :visible
      t.integer :position

      t.timestamps
    end
  end
end
