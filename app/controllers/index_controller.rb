class IndexController < ApplicationController
  def index
  
  end
    
  def search
    @uname = params.fetch(:uname, nil)
    @uname = @uname.match(/(\w+)/)[1]
   
    if (! @uname.nil?)
      @events = Github::Event.search(@uname)
      @user = Github::User.find(@uname)
    end
  end
end
