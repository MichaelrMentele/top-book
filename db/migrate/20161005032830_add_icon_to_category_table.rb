class AddIconToCategoryTable < ActiveRecord::Migration
  def change
    add_column :categories, :glyphicon, :string
  end
end
