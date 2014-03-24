class Modality < ActiveRecord::Base
  has_many :teams
  has_many :positions
  validates :title, presence: true
  acts_as_list
end
