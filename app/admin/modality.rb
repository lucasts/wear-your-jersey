ActiveAdmin.register Modality, { :sort_order => :position_asc } do

  menu :parent   => "Modalities"

  controller do
    def permitted_params
      params.permit modality: [:title, :description, :have_opponents_on_practice]
    end
  end

  filter :title

  sortable

  index do
    sortable_handle_column
    selectable_column
    column :title
    column :have_opponents_on_practice
    actions
  end

  show do |modality|
    attributes_table do
      row :title
      row :have_opponents_on_practice do
        modality.have_opponents_on_practice ? "yes" : "no"
      end
      row :description do
        modality.description.html_safe
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :have_opponents_on_practice
      f.input :description, :as => :html_editor
    end
    f.actions
  end
end
