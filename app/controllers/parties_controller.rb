class PartiesController < ApplicationController
  def join
    current_user = User.first
    @party = Party.first

    if current_user.age < 20
      redirect_to root_path and return
    elsif current_user.missing_last_train?
      redirect_to root_path and return
    end

    if current_user.friends.any? { |f| @party.members.include?(f) }
      @party.members << current_user
      redirect_to @party, notice: "ようこそ！"
    elsif choose
      @party.members << current_user
      redirect_to @party, notice: "ようこそ！"
    else
      redirect_to root_path, notice: "参加をあきらめました"
    end
  end

  def show
    @party = Party.find(params[:id])
  end

  def choose(weight = 50)
    rand <= weight/100.0
  end
end
