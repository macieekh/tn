class Copier < ActiveRecord::Base
  attr_accessible :location, :serial
  has_many :tickets, :dependent => :destroy
  belongs_to :user
  validates :user_id, presence: true
end
