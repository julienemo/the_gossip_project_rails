class WelcomeController < ApplicationController
  def index 
    @gossip = Gossip.first
  end

  def index_post
    puts "hello depuis le serv"
    user = User.new
    user.first_name = params["first_name"]
    user.save
    puts "c'est fini"
    render template: "welcome/index"
    @user = User.find_by(first_name: params[:first_name])
  end
end
