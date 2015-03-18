require 'spec_helper'

describe StringReverser do

    before :all do
        @reverser = StringReverser.new()
    end

    describe "#reverse" do

        context "with a single word" do
            it "reverses the word" do
                reversed_string = @reverser.reverse("Starbucks")
                expect(reversed_string).to eql("skcubratS")
            end
        end

        context "with multiple words" do
            it "reverses the entire string" do
              reversed_string = @reverser.reverse("Jim likes rats")
              expect(reversed_string).to eql("star sekil miJ")
            end
        end

    end

end
