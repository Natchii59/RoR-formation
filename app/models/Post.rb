class Post < ApplicationRecord

  def as_json(options = nil)
    super(only: [:id, :name, :created_at])
  end

end
