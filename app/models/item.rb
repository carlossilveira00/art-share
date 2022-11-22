class Item < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
end
