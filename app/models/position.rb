class Position < ActiveRecord::Base
  belongs_to :modality
  validates :title, presence: :true
  acts_as_list
end
