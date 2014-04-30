class Event < ActiveRecord::Base
  belongs_to :teams
  validates :locale, presence: true
  validates :date  , presence: true
  validates :time  , presence: true
end
