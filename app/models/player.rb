class Player < ActiveRecord::Base
  acts_as_list

  attr_accessor :nickname

  belongs_to :team
  belongs_to :position

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nickname, presence: true

  has_attached_file :player_image,
    :styles => { :thumb => "100x>", :small => "350x>" }
  validates_attachment_content_type :player_image,
    :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
