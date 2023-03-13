class QueryLog < ApplicationRecord
    validates :user_id, presence: true
    validates :search_term, presence: true
    validates :searched_at, presence: true

  scope :trending, lambda {
    where('searched_at > ?', 24.hours.ago)
      .count.keys.first(5)
      .group(:search_term)
      .order("COUNT(*) DESC")
      .limit(5)
      .pluck(:search_term)
  }
end
