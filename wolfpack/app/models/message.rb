class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  scope :display, -> { order(:created_at).last(20)}
end
