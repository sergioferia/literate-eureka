module Github
  class Repo < Base
    attr_accessor :id,
                  :name,
                  :url
    
    CACHE_DEFAULTS = { expires_in: 7.days, force: false }

    def self.find(name)
      response = Request.get("repos/#{name}", CACHE_DEFAULTS)
      Repo.new(response)
    end

    def initialize(args = {})
      super(args)
    end

  end
end
