class SponsorsController < ApplicationController
  def index
    @categories_sponsors = SponsorCategory
      .categories_by_grandeur(SponsorCategoryGrandeurType::SPONSOR)
    @categories_partners = SponsorCategory
      .categories_by_grandeur(SponsorCategoryGrandeurType::PARTNER)
  end

  def show
  end
end
