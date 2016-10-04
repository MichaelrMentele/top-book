class Book < ActiveRecord::Base
  include Voteable
  
  has_many :comments
end