# frozen_string_literal: true

module ResponseConcern
  extend ActiveSupport::Concern
  def successful_api_response(msg, data = nil, status = :ok, total_count = 0)
    render json: {
      status: true, message: msg,
      response: data,
      total_records: total_count
    }, status: status
  end

  def failed_api_response(msg, errors = nil, status = :bad_request)
    render json: {
      status: false, message: msg,
      errors: errors
    }, status: status
  end

  def no_data_api_response(msg, data = nil, status = :not_found)
    render json: {
      status: true, message: msg,
      response: data
    }, status: status
  end
end
