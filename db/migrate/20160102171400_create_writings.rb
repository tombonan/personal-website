class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|
      t.string :title
      t.string :publication
      t.string :publication_link
      t.text :body

      t.timestamps null: false
    end
  end
end
