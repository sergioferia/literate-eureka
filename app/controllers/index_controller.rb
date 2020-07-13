class IndexController < ApplicationController
  def index
  
  end
    
  def search
    @uname = params.fetch(:uname, "")
    @uname = @uname[/(\w+)/].to_s
   
    if ( @uname.length > 0)
      @events = Github::Event.search(@uname)
      @user = Github::User.find(@uname)
    end
  end
end
s
