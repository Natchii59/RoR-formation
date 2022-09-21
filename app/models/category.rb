class Category < ApplicationRecord

  include Sluggable

  validates :name, on: [:create, :update], presence: true

  has_many :posts
  has_many :metas, as: :metaable

end
