module Sluggable

  extend ActiveSupport::Concern

  included do
    before_validation :set_default_slug, on: [:create, :update]
    validates :slug, on: [:create, :update], format: { with: /\A[a-z0-9\-]+\z/ }, uniqueness: true

    private

    def set_default_slug
      if !self.slug.nil? && !self.name.nil? && !self.name.empty? && self.slug.empty?
        self.slug = name.parameterize
      elsif !self.slug.nil? && !self.slug.empty?
        self.slug = self.slug.parameterize
      end
    end
  end

end
