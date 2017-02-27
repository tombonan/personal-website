class CreateNyrbs < ActiveRecord::Migration
  def change
    create_table :nyrbs do |t|
      t.string :title
      t.string :author
      t.string :link
      t.string :title_color
      t.string :background_color
      t.string :border_color

      t.timestamps null: false
    end
  end
end
