class Post < ApplicationRecord

  include Sluggable

  default_scope { order(created_at: :desc) }
  scope :online, -> (online = 1) { where(online: online) }

  def as_json(options = nil)
    super(only: [:id, :name, :created_at])
  end

end
