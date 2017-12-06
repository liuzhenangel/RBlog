class Base < ApplicationRecord
  validates :title, :content, presence: true
end
