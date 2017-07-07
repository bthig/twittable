class Tweet < ApplicationRecord
  belongs_to :user

  has_many :likes

  validates :user_id, presence: true
  validates :user, presence: true

  validates :message, presence: true, length: { maximum: 140, too_long: 'A twitt is 140 characters or less!' }
end
