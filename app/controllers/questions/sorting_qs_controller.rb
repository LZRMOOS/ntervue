##################
# Not relevant!! #
##################
class Questions::SortingQsController < ApplicationController
  skip_before_action :authorized

  def index
    @car_makes = CarMake.all
    @car_models = CarModel.all
    @car_coolnesses = CarCoolness.all
  end
end
