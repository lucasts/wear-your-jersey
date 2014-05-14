class SponsorCategory < ActiveRecord::Base
  has_enumeration_for :grandeur, with: SponsorCategoryGrandeurType, create_helpers: true
  has_many :sponsors

  validates_presence_of :title, :grandeur
  acts_as_list

  scope :categories_by_grandeur, ->(grandeur) {
    includes(:sponsors)
    .where(grandeur: grandeur)
    .order('sponsor_categories.position', 'sponsors.position')
  }

  scope :all_categories, -> {
    includes(:sponsors)
    .order('sponsor_categories.grandeur', 'sponsor_categories.position', 'sponsors.position')
  }
end
