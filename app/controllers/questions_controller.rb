##################
# Not relevant!! #
##################
class QuestionsController < ApplicationController
  skip_before_action :authorized

  def index
    @car_makes = CarMake.all
    @car_models = CarModel.all
    @car_coolnesses = CarCoolness.all
  end

  def query
    results = ActiveRecord::Base.connection.exec_query(required_params)

    if results.rows.include?(["Volvo"]) && results.rows.include?(["Ferrari"])
      flash.notice = "Awesome, you did it! Extra credit: How can I exploit this form to view/manipulate other tables or databases? #{results.rows}"
    else
      flash.notice = results
    end
    redirect_to questions_path
  rescue ActiveRecord::StatementInvalid => e
    Rails.logger.info("wei error #{e}")
    flash.alert = e
    redirect_to questions_path
  end

  private

  def required_params
    query = params.require(:query)
    'SELECT ' + query
  end
end
