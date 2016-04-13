class QueriesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    result = Schema.execute(
      query_string,
      variables: query_variables
    )
    render json: result
  end

private

  def query_string
    params[:query]
  end

  def query_variables
    params[:variables] || {}
  end
end
