class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  has_one_attached :photo
  validates :user_id, :name, :active presence: true
  validates :name uniqueness: true

  def using!
    self.active = true
  end
end
