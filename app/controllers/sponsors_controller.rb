class SponsorsController < ApplicationController
  def index
    @categories = SponsorCategory.all_categories
  end

  def show
    @sponsor = Sponsor.find(params[:id])
  end
end
