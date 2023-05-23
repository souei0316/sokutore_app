class BbsTitle < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  has_many :bbs_comments, dependent: :destroy
  
  validates :title, presence: true
  validates :title, length: { maximum: 30 }
end
