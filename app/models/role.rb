class Role < ActiveRecord::Base
  belongs_to :modality
  has_many :players
  validates :title, presence: :true
  acts_as_list
end
