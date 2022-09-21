class Post < ApplicationRecord

  include Sluggable

  validates :name, on: [:create, :update], presence: true

  belongs_to :category, counter_cache: true
  has_and_belongs_to_many :tags
  has_many :metas, as: :metaable

  scope :online, -> (online = 1) { where(online: online) }

  def as_json(options = nil)
    super(only: [:id, :name, :created_at])
  end

end
