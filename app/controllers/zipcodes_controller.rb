class ZipcodesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def find_or_create
    zipcode = FindOrCreateZipcodeService.new(zipcode_params).call

    if zipcode.errors.present?
      render json: { errors: zipcode.errors.full_messages }, status: 400
    else
      render json: zipcode.as_json, status: 200
    end
  end

  private

  def zipcode_params
    params.permit(:code, :city, :loc, :population, :state)
  end
end
