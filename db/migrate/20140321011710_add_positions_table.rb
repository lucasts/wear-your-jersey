class AddPositionsTable < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.references :modality, index: true
      t.string     :title
      t.boolean    :staff
      t.integer    :position # field used to sortable registers
    end
  end
end
