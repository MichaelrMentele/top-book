class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :blurb
      t.string :why
      t.string :what
      t.string :how
      t.timestamps
    end
  end
end
