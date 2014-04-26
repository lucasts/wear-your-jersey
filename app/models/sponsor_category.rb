class SponsorCategory < ActiveRecord::Base
  has_enumeration_for :grandeur, :with => SponsorCategoryGrandeurType, :create_helpers => true
  validates :title, presence: true
  validates :grandeur, presence: true
  acts_as_list
end
