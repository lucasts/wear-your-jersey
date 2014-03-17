class Modality < ActiveRecord::Base
  validates :title, presence: true
  acts_as_list
end
