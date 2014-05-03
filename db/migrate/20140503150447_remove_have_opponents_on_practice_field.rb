class RemoveHaveOpponentsOnPracticeField < ActiveRecord::Migration
  def change
    remove_column :modalities, :have_opponents_on_practice
  end
end
