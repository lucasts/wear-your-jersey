class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :get_categories_of_master_sponsors

  private

  def get_categories_of_master_sponsors
    @categories_master_sponsors = SponsorCategory
      .categories_by_grandeur(SponsorCategoryGrandeurType::MASTER_SPONSOR)
  end
end
