class NameValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    if value.nil? || value.length != 2
      message = options[:message] || "doit avoir 2 caractères"
      record.errors.add(attribute, :not_2, message: message)
    end
  end

end
