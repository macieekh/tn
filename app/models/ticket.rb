class Ticket < ActiveRecord::Base
  attr_accessible :counter, :issue, :copier_id
  belongs_to :copier
#  validates :user_id, presence: true
end
