# frozen_string_literal: true

class FindOrCreateZipcodeService
  def initialize(params)
    @zipcode_params = params
  end

  def call
    zipcode = find_zipcode(@zipcode_params[:code])
    return zipcode if zipcode.present?

    Zipcode.create(@zipcode_params)
  end

  private

  def find_zipcode(code)
    Zipcode.where(code: code).first
  end
end
