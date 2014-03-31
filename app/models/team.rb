class Team < ActiveRecord::Base
  belongs_to :modality
  validates :title, presence: true
  validates :description, presence: true
  acts_as_list

  has_attached_file :team_image, 
    :styles => { :thumb => "100x>", :small => "350x>", :medium => "650x>" }
  validates_attachment_content_type :team_image, 
    :content_type => ["image/jpg", "image/jpeg", "image/png"]

  def getFullNameAndId
    fullname = [modality.title, title].join " - "
    [fullname, id]
  end
end
