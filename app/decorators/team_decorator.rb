class TeamDecorator < Draper::Decorator
  def full_name_and_id
    ["#{model.modality.title} - #{model.title}", model.id]
  end
end
