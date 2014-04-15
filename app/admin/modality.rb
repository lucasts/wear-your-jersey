ActiveAdmin.register Modality, { :sort_order => :position_asc } do

  controller do
    def permitted_params
      params.permit modality: [:title, :description]
    end
  end

  filter :title

  sortable

  index do
    sortable_handle_column
    selectable_column
    column :title
    actions
  end

  show do |modality|
    attributes_table do
      row :title
      row :description do
        modality.description.html_safe
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :html_editor
    end
    f.actions
  end
end
