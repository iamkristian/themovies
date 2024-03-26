 require 'json'

class Omdb

  attr_reader :conn

  def initialize
    @conn = Faraday.new(url: 'http://www.omdbapi.com/')
  end

  def find_by_title(query)
    resp = conn.get '', { t: query, apikey: api_key }
    JSON.parse(resp.body).with_indifferent_access
  end

  private

  def api_key
    ENV['OMDB_API_KEY']
  end
end
