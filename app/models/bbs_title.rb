class BbsTitle < ApplicationRecord

  attachment :image
  belongs_to :user
  has_many :bbs_comments, dependent: :destroy
  
  validates :title, presence: true

end
