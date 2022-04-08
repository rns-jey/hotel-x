module Hotel
  class Client
    def self.reservation
      response = Request.call(http_method: 'get', endpoint: '/your_endpoint_here')
    end
  end
end