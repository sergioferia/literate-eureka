module Github
  class User < Base
    attr_accessor :login,
                  :avatar_url,
                  :created_at,
                  :updated_at,
                  :id
    
    CACHE_DEFAULTS = { expires_in: 7.days, force: false }

    def self.find(id)
      response = Request.get("users/#{id}", CACHE_DEFAULTS)
      User.new(response)
    end

    def initialize(args = {})
      super(args)
    end

  end
end
