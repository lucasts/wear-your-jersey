ActiveAdmin.register Team do
  config.sort_order = "position_asc"

  controller do
    def permitted_params
      params.permit team: [:modality_id, :title, :description, :team_image]
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
    actions
  end

  show do |team|
    attributes_table do
      row :title
      row :modality
      row :team_image do
        image_tag team.team_image.url(:thumb)
      end
      row :description do
        team.description.html_safe
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :modality_id,
        :as         => :select,
        :collection => Modality.all.map { |m| [m.title, m.id] }
      f.input :team_image, :required => false
      f.input :description, as: :html_editor
    end
    f.actions
  end
end
