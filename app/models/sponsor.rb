class Sponsor < ActiveRecord::Base
  belongs_to :sponsor_category
  validates :title, presence: true
  acts_as_list
end
