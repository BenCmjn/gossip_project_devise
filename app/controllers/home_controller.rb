class HomeController < ApplicationController
  def index
  	@gossips = Gossip.all
  	@moussaillons = Moussaillon.all
  end

end
