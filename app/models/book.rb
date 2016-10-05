class Book < ActiveRecord::Base
  include Voteable
  
  belongs_to :user

  has_many :books_categories
  has_many :categories, through: :books_categories
  has_many :comments
end