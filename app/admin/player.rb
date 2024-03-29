ActiveAdmin.register Player, { sort_order: :position_asc } do

  menu parent: "Teams and players"

  controller do
    def permitted_params
      params.permit player: [:team_id, :role_id, :first_name, :last_name, :nickname,
                             :player_image, :number, :birth, :hometown, :bio]
    end
  end

  filter :first_name
  filter :nickname
  filter :team, collection: -> { TeamDecorator
                                   .decorate_collection(Team.all)
                                   .map { |team| team.full_name_and_id } }
  filter :role

  sortable

  index do
    sortable_handle_column
    selectable_column
    column :first_name
    column :nickname
    column :role
    column :team do |player|
      team_full_name = player.team.decorate.full_name_and_id.first
      link_to(team_full_name, admin_team_url(player.team.id))
    end
    actions
  end

  show do |player|
    attributes_table do
      row :first_name
      row :last_name
      row :nickname
      row :player_image do
        image_tag player.player_image.url(:thumb)
      end
      row :birth
      row :hometown
      row :bio do
        player.bio.html_safe
      end
      row :team
      row :role
      row :number
    end
  end

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :nickname
      f.input :player_image, required: false
    end
    f.inputs do
      f.input :team_id, as: :select,
        input_html: {
          "data-get-positions-input" => "",
          "data-get-positions-url"   => "/admin/teams/:id/roles_of_modality"
        },
        collection: TeamDecorator.
                      decorate_collection(Team.all).map { |team| team.full_name_and_id }
      f.input :role_id, as: :select, collection: [], hint: "Select a team first",
        input_html: {
          "data-get-positions-output" => ""
        }
      f.input :number
    end
    f.inputs do
      f.input :birth, as: :datepicker
      f.input :hometown
      f.input :bio, as: :html_editor
    end
    f.actions
  end
end
