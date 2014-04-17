class Player < ActiveRecord::Base
  belongs_to :role
  belongs_to :team
  acts_as_list

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nickname, presence: true
  validates :team_id, presence: true
  validates :role_id, presence: true

  has_attached_file :player_image,
    :styles => { :thumb => "100x>", :small => "350x>" }
  validates_attachment_content_type :player_image,
    :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
