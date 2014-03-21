class Position < ActiveRecord::Base
  belongs_to :modality
  acts_as_list
end
