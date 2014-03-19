class AddTeamsTable < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.references :modality, index: true
      t.string     :title
      t.text       :description
      t.integer    :position # field used to sortable registers
      t.attachment :team_image
    end
  end
end
