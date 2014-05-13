class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :get_categories_of_master_sponsors

  private

  def get_categories_of_master_sponsors
    @master_categories = SponsorCategory.master_categories
  end
end
