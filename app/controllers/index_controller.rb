class IndexController < ApplicationController
  def index
    #display rando user
    @user = Github::User.find("sergioferia")
  end
end
