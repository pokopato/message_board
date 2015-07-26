class Message < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 20 }
  validates :body, presence: true, length: { minimum: 2, maximum: 30 }
  validates :age, numericality: { less_than: 120, greater_than: 0, only_integer: true }
end
