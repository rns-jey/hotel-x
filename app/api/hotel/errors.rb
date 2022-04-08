module Hotel
  class Errors
    def self.map(code)
      case code
      when 400
        return 'Bad Request'
      when 401
        return 'Unauthorized Access'
      end
    end
  end
end