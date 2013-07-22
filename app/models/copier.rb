class Copier < ActiveRecord::Base
  attr_accessible :location, :serial, :model_id
  has_many :tickets, :dependent => :destroy
  belongs_to :user
  belongs_to :model
  validates :user_id, presence: true
end
