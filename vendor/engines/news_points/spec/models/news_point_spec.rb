require 'spec_helper'

describe NewsPoint do

  def reset_news_point(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @news_point.destroy! if @news_point
    @news_point = NewsPoint.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_news_point
  end

  context "validations" do
    
    it "rejects empty title" do
      NewsPoint.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_news_point
      NewsPoint.new(@valid_attributes).should_not be_valid
    end
    
  end

end