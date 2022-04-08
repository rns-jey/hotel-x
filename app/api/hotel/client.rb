module Hotel
  class Client
    def self.reservation
      response = Request.call(http_method: 'get', endpoint: '/')
    end
  end
end