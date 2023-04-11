class BbsComment < ApplicationRecord
  belongs_to :user
  belongs_to :bbs_title

  validates :comment, presence: true
  validates :comment, length: { maximum: 100 }
end
