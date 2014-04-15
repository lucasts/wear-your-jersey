class TeamDecorator < Draper::Decorator
  def full_name_and_id
    fullname = [model.modality.title, model.title].join(" - ")
    [fullname, model.id]
  end
end
