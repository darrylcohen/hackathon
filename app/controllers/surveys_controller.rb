class SurveysController < ApplicationController

  def show
    users = User.all
    total = 0
    users.each do |user|
      total += user.rating
    end
    @average = (total / User.count).to_f


  end
end
