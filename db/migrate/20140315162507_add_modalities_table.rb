class AddModalitiesTable < ActiveRecord::Migration
  def change
    create_table :modalities do |t|
      t.string  :title
      t.text    :description
      t.integer :position # field used to sortable registers
    end
  end
end
