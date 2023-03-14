class BbsTitle < ApplicationRecord
  belongs_to :user
  has_many :bbs_comments, dependent: :destroy
  attachment :image
end
