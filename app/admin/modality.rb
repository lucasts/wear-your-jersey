ActiveAdmin.register Modality do
  config.sort_order = "position_asc"

  controller do
    def permitted_params
      params.permit modality: [:title, :description]
    end
  end

  sortable

  index do
    selectable_column
    sortable_handle_column
    column :title
    column :description
    actions
  end

  filter :title, :as => :string

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
    end
    f.actions
  end
end
