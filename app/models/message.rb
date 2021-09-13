class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attached :image  # １レコードと画像ファイルの紐付け

  validates :content, presence: true, unless: :was_attached?

  # unlessを使わない場合
  def was_attached?
    self.image.attached?
  end

end
