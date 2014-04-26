class AddSponsorsTable < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string     :title
      t.attachment :sponsor_image
      t.text       :description
      t.references :sponsor_category, index: true
    end
  end
end
