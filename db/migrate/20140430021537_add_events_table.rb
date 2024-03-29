class AddEventsTable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :team, index: true
      t.string     :locale
      t.text       :description
      t.string     :opponent
      t.datetime   :date
    end
  end
end
