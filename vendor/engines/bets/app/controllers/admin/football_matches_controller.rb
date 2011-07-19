class Admin::FootballMatchesController < ApplicationController

  def create
    p params[:match]

    @match=FootballMatch.new(:league_id=>params[:match][:league_id],:team1_id=>params[:team1_id], :team2_id=>params[:team2_id], :round=>params[:round])
    p params[:team1_id]
    if @match.save
      p "i"
      respond_to do |format|
        format.js
      end
    end
  end

end
