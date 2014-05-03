class Event < ActiveRecord::Base
  belongs_to :team
  validates :team_id, presence: true
  validates :locale , presence: true
  validates :date   , presence: true

  just_define_datetime_picker :date
end
