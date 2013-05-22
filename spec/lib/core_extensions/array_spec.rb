require 'spec_helper'

describe Array do
  
  describe "#levenshtein_suggestions(input)" do
    subject { Array.new }
    
    it "should exist" do
      subject.should respond_to :levenshtein_suggestions
    end
    
    it "should raise an ArgumentError unless given Argument is a String if subject is an empty Array" do
      expect { [String.new].levenshtein_suggestions(Object.new) }.
        to raise_error ArgumentError
    end
    
    it "should return an empty Array if subject is an empty Array" do
      subject.levenshtein_suggestions(Object.new).
        should be_empty
    end
  
  end
end