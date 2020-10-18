class Condition < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :info

  validates :day, presence: true

  validates :info_id, { other_than: 0 }

  # Association
  belongs_to :user
end
