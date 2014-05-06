ActiveAdmin.register Event do

  controller do
    def permitted_params
      params.permit event: [:team_id, :locale, :description, :opponent,
                            :date_date, :date_time_hour, :date_time_minute]
    end
  end

  filter :team, :collection => -> { TeamDecorator
                                      .decorate_collection(Team.all)
                                      .map { |team| team.full_name_and_id } }
  filter :locale
  filter :opponent

  index do
    selectable_column
    column :team do |event|
      team_full_name = event.team.decorate.full_name_and_id.first
      link_to(team_full_name, admin_team_url(event.team.id))
    end
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
    end
  end

  form do |f|
    f.inputs do
      f.input :team_id,
        :as         => :select,
        :collection => TeamDecorator.decorate_collection(Team.all).map do |team|
          team.full_name_and_id
        end
      f.input :locale
      f.input :description, :as => :html_editor
      f.input :opponent
      f.input :date, :as => :just_datetime_picker
    end
    f.actions
  end
end
