class Nestedcomment < ApplicationRecord
  belongs_to :comment
  has_many :nestedcomments
end
