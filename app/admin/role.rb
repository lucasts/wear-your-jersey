ActiveAdmin.register Role, { sort_order: :position_asc } do

  menu parent: "Modalities"

  controller do
    def permitted_params
      params.permit position: [:modality_id, :title, :staff]
    end
  end

  filter :title
  filter :modality

  sortable

  index do
    sortable_handle_column
    selectable_column
    column :title
    column :modality
    column :staff
    actions
  end

  show do |position|
    attributes_table do
      row :title
      row :modality
      row :staff do
        role.staff ? "yes" : "no"
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :modality
      f.input :staff
    end
    f.actions
  end
end
