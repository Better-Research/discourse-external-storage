class PapersController < ApplicationController
    def request_get(link)
      url = URI.parse(link)
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      req = Net::HTTP::Get.new(url.request_uri)
      req['authorization'] = "Bearer " + SiteSetting.bearer_token
      response = http.request(req)
      return JSON.parse(response.body)
    end
    def index
      render json: request_get(SiteSetting.request_url + params[:id])
    end
end