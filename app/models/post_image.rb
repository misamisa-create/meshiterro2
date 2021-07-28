class PostImage < ApplicationRecord
  belongs_to :user
  # refileを使う際のルール
  attachment :image
end
