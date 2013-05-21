require 'spec_helper'

describe String do
  describe "#levenshtein_distance(other)" do
    subject { String.new }
    it "should exist" do
      subject.should respond_to :levenshtein_distance
    end
    
    it "should raise an ArgumentError unless given Argument is a String" do
      expect { subject.levenshtein_distance(Object.new) }.
        to raise_error ArgumentError
    end
    
    it "should return an Integer if given Argument is a String" do
      subject.levenshtein_distance(String.new).
        should be_a(Integer)
    end
  end
end