class ApplicationController < ActionController::API
  def retrieve_response(object, err)
    if err.nil?
      render json: object, status: 200
    else
      render json: { error: err.message }, status: err.error_code
    end
  end
end
