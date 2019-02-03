module Github
  class Event < Base
    attr_accessor :id,
                  :type,
                  :actor,
                  :repo,
                  :public,
                  #:org,
                  #:payload,
                  :created_at
                  

    CACHE_DEFAULTS = { expires_in: 7.days, force: false }

    def self.search(id)
      response = Request.where("users/#{id}/events", CACHE_DEFAULTS)
      events = response.map { |event| Event.new(event) }
    end

    def initialize(args = {})
      super(args)
      self.actor = User.new(args.fetch("actor",[]))
      self.repo  = Repo.new(args.fetch("repo",[]))
      #self.payload 
      #self.opt 
    end


  end
end
