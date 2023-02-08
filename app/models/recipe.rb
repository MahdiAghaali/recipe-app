class Recipe < ApplicationRecord
  has_many :RecipeFoods
  belongs_to :user, class_name: 'User'
end
