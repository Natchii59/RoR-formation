class Post < ApplicationRecord

  validates :name, name: { message: "ERROR" }
  validates :content, name: true

  def as_json(options = nil)
    super(only: [:id, :name, :created_at])
  end

end
