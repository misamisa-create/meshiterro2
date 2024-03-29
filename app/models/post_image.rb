class PostImage < ApplicationRecord
  belongs_to :user
  # refileを使う際のルール
  attachment :image
  has_many:post_comments,dependent: :destroy
  has_many:favorites,dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id:user.id).exists
  end
end
