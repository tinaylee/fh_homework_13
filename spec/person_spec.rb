require 'spec_helper'



RSpec.describe Person, type: :model do
  describe "full_name" do 
    it "should return a persons's full name" do
      #arrange
      person = Person.new("John", "Doe")
      #act
      result = person.full_name 
      #assert
      expect(result).to eq("John Doe")

    end
  end

  describe "full_name_reversed" do
    it "should return person's full name with last name first" do
      #arrange
      person = Person.new("John", "Doe")
      #act
      result = person.full_name_reversed
      #assert
      expect(result).to eq("Doe, John")
    end
  end
 end

