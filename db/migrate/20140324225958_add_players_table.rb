class AddPlayersTable < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :team, index: true
      t.references :role, index: true
      t.string     :first_name
      t.string     :last_name
      t.string     :nickname
      t.integer    :position # field used to sortable registers
      t.attachment :player_image
      t.integer    :number
      t.date       :birth
      t.string     :hometown
      t.text       :bio
    end
  end
end
