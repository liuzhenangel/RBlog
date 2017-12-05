class Article < ApplicationRecord
  validates :title, :content, presence: true
end
