require 'net/http'
require 'json'

class IpLookup
  def self.run(ip_address:, key: '1F6B6D69626645D8')
    uri = URI.parse("https://ipinfo.io/#{ip_address}")
    response = Net::HTTP.get_response(uri)

    hash_response_body = JSON.parse(response.body)

    if hash_response_body['bogon'] == true
      Rails.logger.info("not valid ip address #{ip_address}")
      'Bogon'
    else
      Rails.logger.info("city for ip #{ip_address} is #{hash_response_body['city']}")
      hash_response_body['city'] + ', ' + hash_response_body['country']
    end
  end
end
