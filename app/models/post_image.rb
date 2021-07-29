class PostImage < ApplicationRecord
  belongs_to :user
  # refileを使う際のルール
  attachment :image
  has_many:post_comments,dependent: :destroy
end
