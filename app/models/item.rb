class Item < ApplicationRecord
  belongs_to :list
  validates :name, :pack, :number_of_item, presence: true
  validates :name, uniqueness: true

  def packed
    self.pack = true
  end
end
