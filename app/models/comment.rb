class Comment < ApplicationRecord
  validates :content, presence: true, length: {maximum: 1}
end
