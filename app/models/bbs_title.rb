class BbsTitle < ApplicationRecord
  belongs_to :user
  attachment :image
end
