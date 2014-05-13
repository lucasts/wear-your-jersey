class SponsorCategory < ActiveRecord::Base
  has_enumeration_for :grandeur, :with => SponsorCategoryGrandeurType, :create_helpers => true
  has_many :sponsors

  validates :title, presence: true
  validates :grandeur, presence: true
  acts_as_list

  scope :categories_by_grandeur, ->(grandeur) {
    includes(:sponsors)
    .where(grandeur: grandeur)
    .order('sponsor_categories.position', 'sponsors.position')
  }
end
