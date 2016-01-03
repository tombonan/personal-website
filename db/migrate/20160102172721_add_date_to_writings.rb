class AddDateToWritings < ActiveRecord::Migration
  def change
    add_column :writings, :date, :string
  end
end
