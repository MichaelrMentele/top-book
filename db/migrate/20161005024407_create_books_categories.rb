class CreateBooksCategories < ActiveRecord::Migration
  def change
    create_table :books_categories do |t|
      t.integer :category_id
      t.integer :book_id
    end
  end
end
