class AddSponsorCategoriesTable < ActiveRecord::Migration
  def change
    create_table :sponsor_categories do |t|
      t.string  :title
      t.integer :grandeur
      t.integer :position # field used to sortable registers
    end
  end
end
