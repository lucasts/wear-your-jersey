class HomeController < ApplicationController
  before_filter :get_categories_of_master_sponsors

  def index
  end

  def get_categories_of_master_sponsors
    @master_categories = SponsorCategory.master_categories
  end
end
