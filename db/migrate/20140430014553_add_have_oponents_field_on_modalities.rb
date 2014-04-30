class AddHaveOponentsFieldOnModalities < ActiveRecord::Migration
  def change
    add_column :modalities, :have_opponents_on_practice, :boolean
  end
end
