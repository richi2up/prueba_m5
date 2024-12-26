class Tweet < ApplicationRecord
  scope :search, ->(query) {
    where("description ILIKE ? OR user_name ILIKE ?", 
          "%#{query}%", 
          "%#{query}%")
  }
end
