class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :issues, dependent: :destroy

  validates :first_name, presence: true, length: { minimum: 2 }, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :last_name, presence: true, length: { minimum: 2 }, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :company, presence: true
end
