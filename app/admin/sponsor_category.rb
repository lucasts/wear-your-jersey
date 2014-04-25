ActiveAdmin.register SponsorCategory, { :sort_order => :position_asc } do

  controller do
    def permitted_params
      params.permit :sponsor_category => [:title, :grandeur]
    end
  end

  filter :title

  sortable

  index do
    sortable_handle_column
    selectable_column
    column :title
    column :grandeur do |category|
      category.grandeur_humanize
    end
    actions
  end

  show do |category|
    attributes_table do
      row :title
      row :grandeur do
        category.grandeur_humanize
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :grandeur, :as => :select, :collection => SponsorCategoryGrandeurType.to_a
    end
    f.actions
  end
end
