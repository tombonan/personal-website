class AddSlugToWritings < ActiveRecord::Migration
  def change
    add_column :writings, :slug, :string
    add_index :writings, :slug 
  end
end
