class ChangeNameAndSlugNotnull < ActiveRecord::Migration[7.0]
  def change
    change_table :posts do |t|
      t.change_null :name, false
      t.change_null :slug, false
    end

    change_table :categories do |t|
      t.change_null :name, false
      t.change_null :slug, false
    end
  end
end
