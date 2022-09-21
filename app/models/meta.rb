class Meta < ApplicationRecord

  belongs_to :metaable, polymorphic: true

end
