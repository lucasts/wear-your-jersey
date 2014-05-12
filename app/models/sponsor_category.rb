class SponsorCategory < ActiveRecord::Base
  has_enumeration_for :grandeur, :with => SponsorCategoryGrandeurType, :create_helpers => true
  has_many :sponsors

  validates :title, presence: true
  validates :grandeur, presence: true
  acts_as_list

  scope :master_categories, -> {
    where(grandeur: SponsorCategoryGrandeurType::MASTER_SPONSOR).order(:position)
  }

  def related_sponsors
    sponsors.ordered
  end
end
