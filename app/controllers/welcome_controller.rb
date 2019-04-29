class WelcomeController < ApplicationController
  def index 
    @user = User.first
    puts "Mon user est #{@user}"
  end
end
