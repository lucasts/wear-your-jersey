class Sponsor < ActiveRecord::Base
  belongs_to :sponsor_category
  validates :title, presence: true
  acts_as_list

  has_attached_file :sponsor_image,
    styles: { thumb: "100x>", small: "350x>" }
  validates_attachment_content_type :sponsor_image,
    content_type: ["image/jpg", "image/jpeg", "image/png"]
end
