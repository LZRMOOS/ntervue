class IpGeolocationsController < ApplicationController
  def index
    @ip_geolocations = IpGeolocation.where("user_id = #{current_user.id}")
  end

  def show
    @ip_geolocation = IpGeolocation.where("id like '" + params[:id] + "'").first
  end

  def new
    @ip_geolocation = IpGeolocation.new
  end

  def edit
    @ip_geolocation = IpGeolocation.find(params[:id])
  end

  def create
    # render plain: params[:ip_geolocation].inspect
    @ip_geolocation = IpGeolocation.new(params[:ip_geolocation])
    @ip_geolocation.user = current_user
    @ip_geolocation.geolocation = IpLookup.run(
      ip_address: params[:ip_address],
      key: '1F6B6D69626645D8'
    )

    if @ip_geolocation.save
      redirect_to @ip_geolocation
    else
      render 'new'
    end
  end

  def update
    @ip_geolocation = IpGeolocation.find(params[:id])

    if @ip_geolocation.update(params[:ip_geolocation])
      redirect_to @ip_geolocation
    else
      render 'edit'
    end
  end

  def destroy
    @ip_geolocation = IpGeolocation.find(params[:id])

    SlackAlert.run(
      message: "#{@ip_geolocation.ip_address} deleted",
      slack_webhook_url: 'https://hooks.slack.com/services/3VD3HkmHXa/T2bkgANLXUJ'
    )

    @ip_geolocation.destroy
    if params.has_key?(:redirect_url)
      redirect_to params[:redirect_url]
    else
      redirect_to ip_geolocations_path
    end
  end

  private

  def params
    request.params
  end

  def ip_geolocation_params
    params.require(:ip_geolocation).permit(:ip_address, :notes)
  end
end
