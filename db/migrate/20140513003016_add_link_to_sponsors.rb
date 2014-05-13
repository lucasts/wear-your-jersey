class AddLinkToSponsors < ActiveRecord::Migration
  def up
    add_column :sponsors, :link, :string
  end

  def down
    remove_column :sponsors, :link
  end
end
