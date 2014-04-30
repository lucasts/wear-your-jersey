ActiveAdmin.register Event do

  controller do
    def permitted_params
      params.permit event: [:team_id, :locale, :description,
                            :opponent, :date, :time]
    end
  end

  filter :team
  filter :locale
  filter :opponent
  filter :date

  index do
    selectable_column
    column :team
    column :locale
    column :opponent
    column :date
    actions
  end

  show do |event|
    attributes_table do
      row :team
      row :locale
      row :description do
        event.description.html_safe
      end
      row :opponent
      row :date
      row :time
    end
  end

  form do |f|
    f.inputs do
      f.input :team_id,
        :as         => :select,
        :collection => TeamDecorator.
                         decorate_collection(Team.all).map { |team| team.full_name_and_id }
      f.input :locale
      f.input :description, :as => :html_editor
      f.input :opponent
      f.input :date, :as => :datepicker
      f.input :time
    end
    f.actions
  end
end
