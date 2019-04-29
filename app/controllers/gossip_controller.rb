class GossipController < ApplicationController
  def each
    @id = params[:id].to_i
    render template: "gossip/gossip_page/#{params[@id]}"
  end
end
