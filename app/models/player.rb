class Player < ActiveRecord::Base
  belongs_to :role
  belongs_to :team
  acts_as_list

  validates_presence_of :first_name, :last_name, :nickname, :team_id, :role_id

  has_attached_file :player_image,
    styles: { thumb: "100x>", small: "300x>", medium: "450x>" }
  validates_attachment_content_type :player_image,
    content_type: ["image/jpg", "image/jpeg", "image/png"]
end
