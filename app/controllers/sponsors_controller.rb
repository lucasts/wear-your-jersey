class SponsorsController < ApplicationController
  def index
    @categories = SponsorCategory.all_categories
  end

  def show
  end
end
