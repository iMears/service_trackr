class Issue < ActiveRecord::Base
  belongs_to :user
  has_many :entries, dependent: :destroy

  validates :subject, presence: true
  validates :priority, presence: true
  validates :description, presence: true
end
