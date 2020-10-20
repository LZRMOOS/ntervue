require 'net/http'
require 'json'

class IpLookup
  def self.run(ip_address:, key: '1F6B6D69626645D8')
    uri = URI.parse("https://ipinfo.io/#{ip_address}")

    begin
      response = Net::HTTP.get_response(uri)
      return 'Not valid' if response.code == '404'
    rescue StandardError => e
      Rails.logger.error("IpLookup failed: #{e}")
    end

    hash_response_body = JSON.parse(response.body)

    if hash_response_body['bogon'] == true
      'Bogon'
    else
      hash_response_body['city'] + ', ' + hash_response_body['country']
    end
  end
end
