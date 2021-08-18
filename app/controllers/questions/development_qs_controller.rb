##################
# Not relevant!! #
##################
class Questions::DevelopmentQsController < ApplicationController
  skip_before_action :authorized

  def alerting
    @header_style = 'is-danger'
    @exercise_name = 'Developing a SOC Alerting Rotation'
  end

  def sorting
    @header_style = 'is-warning'
    @exercise_name = 'Sorting Cars'
    @car_makes = CarMake.all
    @car_models = CarModel.all
    @car_coolnesses = CarCoolness.all
  end
end
