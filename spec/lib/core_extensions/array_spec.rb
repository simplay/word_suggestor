require 'spec_helper'

describe Array do
  
  describe "#levenshtein_suggestions(input)" do
    subject { Array.new }
    
    it "should exist" do
      subject.should respond_to :levenshtein_suggestions
    end
  
  end
end