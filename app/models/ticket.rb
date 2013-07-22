class Ticket < ActiveRecord::Base
  attr_accessible :counter, :issue
  belongs_to :copier
  validates :user_id, presence: true
end
