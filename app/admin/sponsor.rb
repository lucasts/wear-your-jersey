ActiveAdmin.register Sponsor, { :sort_order => :position_asc } do

  menu :parent => "Sponsors"

  controller do
    def permitted_params
      params.permit :sponsor => [:title, :description, :sponsor_image, :sponsor_category_id]
    end
  end

  filter :title

  sortable

  index do
    sortable_handle_column
    selectable_column
    column :title
    column :sponsor_category
    column :description
    actions
  end

  show do |sponsor|
    attributes_table do
      row :title
      row :sponsor_category
      row :sponsor_image do
        image_tag sponsor.sponsor_image.url(:thumb)
      end
      row :description do
        sponsor.description.html_safe
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :sponsor_category
      f.input :sponsor_image, :required => false
      f.input :description, :as => :html_editor
    end
    f.actions
  end
end
