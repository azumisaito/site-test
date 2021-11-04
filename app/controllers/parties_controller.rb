class PartiesController < ApplicationController
  def join
    current_user = User.first
    party = Party.first


  end

  def show
    party = Party.find()
  end
end
