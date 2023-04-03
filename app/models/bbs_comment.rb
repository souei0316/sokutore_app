class BbsComment < ApplicationRecord
  belongs_to :user
  belongs_to :bbs_title
end
