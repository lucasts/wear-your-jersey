class Modality < ActiveRecord::Base
  has_many :teams
  validates :title, presence: true
  acts_as_list
end
