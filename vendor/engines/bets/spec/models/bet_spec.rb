require 'spec_helper'

describe Bet do

  def reset_bet(options = {})
    @valid_attributes = {
      :id => 1,
      :result => "RSpec is great for testing too"
    }

    @bet.destroy! if @bet
    @bet = Bet.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_bet
  end

  context "validations" do
    
    it "rejects empty result" do
      Bet.new(@valid_attributes.merge(:result => "")).should_not be_valid
    end

    it "rejects non unique result" do
      # as one gets created before each spec by reset_bet
      Bet.new(@valid_attributes).should_not be_valid
    end
    
  end

end