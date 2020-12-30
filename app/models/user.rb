class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lists, dependent: :destroy
  has_one_attached :photo
  validates :email, uniqueness: true
  validates :first_name, uniqueness: {scope: :last_name}
  validates :encrypted_password, :email, presence: true

  def full_name
    "#{self.first_name} #{self.last_name}}"
  end

end
