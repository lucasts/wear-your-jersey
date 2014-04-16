class Modality < ActiveRecord::Base
  has_many :teams
  has_many :roles
  validates :title, presence: true
  acts_as_list
end
