##################
# Not relevant!! #
##################
class QuestionsController < ApplicationController
  skip_before_action :authorized

  def index
    @prev_query = params[:prev_query]
    @car_makes = CarMake.all
    @car_models = CarModel.all
    @car_coolnesses = CarCoolness.all
  end

  def query
    complete_sql_query = 'SELECT ' + required_params
    results = ActiveRecord::Base.connection.exec_query(complete_sql_query)

    if results.rows.include?(["Volvo"]) && results.rows.include?(["Ferrari"])
      flash.notice = "Awesome, you did it! Extra credit: How can I exploit this form to view/manipulate other tables or databases? #{results.rows}"
    else
      flash.notice = results
    end
    redirect_to questions_path(prev_query: required_params)
  rescue ActiveRecord::StatementInvalid => e
    Rails.logger.info("wei error #{e}")
    flash.alert = e
    redirect_to questions_path(prev_query: required_params)
  end

  private

  def required_params
    params.require(:query)
  end
end
