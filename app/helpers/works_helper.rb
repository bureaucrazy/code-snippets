module WorksHelper
  def get_count(model_object, foreign_key)
    model_object.where(['kind_id = ?', foreign_key]).count
  end

end
