class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true

    scope :search, lambda { |query|
      where('title LIKE :search_term OR body LIKE :search_term', search_term: "%#{query}%")
    }
end
