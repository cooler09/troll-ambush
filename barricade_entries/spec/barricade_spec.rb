require 'barricade'

describe Barricade do
    before do
        @barricade = Barricade.new
    end
    describe ".all_entries_blocked" do
        context "given [],{'boulder'=>1}" do
            it "should not raise error" do
                expect{@barricade.all_entries_blocked([],{'boulder'=>1})}.not_to raise_error
            end
        end
        context "given [],{'barrel'=>1}" do
            it "should not raise error" do
                expect{@barricade.all_entries_blocked([],{'boulder'=>1})}.not_to raise_error
            end
        end
        context "given [],{'plank'=>1}" do
            it "should not raise error" do
                expect{@barricade.all_entries_blocked([],{'plank'=>1})}.not_to raise_error
            end
        end
        context "given ['large'],{'boulder'=>1}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['large'],{'boulder'=>1})
                expect(actual).to be(true)
            end
        end
        context "given ['large'],{'boulder'=>0}" do
            it "returns false" do
                actual = @barricade.all_entries_blocked(['large'],{'boulder'=>0})
                expect(actual).to be(false)
            end
        end
        context "given ['large'],{'barrel'=>2}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['large'],{'barrel'=>2})
                expect(actual).to be(true)
            end
        end
        context "given ['large'],{'plank'=>4}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['large'],{'plank'=>4})
                expect(actual).to be(true)
            end
        end
        context "given ['medium'],{'boulder'=>1}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['medium'],{'boulder'=>1})
                expect(actual).to be(true)
            end
        end
        context "given ['medium'],{'barrel'=>1}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['medium'],{'barrel'=>1})
                expect(actual).to be(true)
            end
        end
        context "given ['medium'],{'plank'=>2}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['medium'],{'plank'=>2})
                expect(actual).to be(true)
            end
        end
        context "given ['small'],{'boulder'=>1}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['small'],{'boulder'=>1})
                expect(actual).to be(true)
            end
        end
        context "given ['small'],{'barrel'=>1}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['small'],{'barrel'=>1})
                expect(actual).to be(true)
            end
        end
        context "given ['small'],{'plank'=>1}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['small'],{'plank'=>1})
                expect(actual).to be(true)
            end
        end
        context "given ['large','large','large'],{'barrel'=>2,'plank'=>8}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['large','large','large'],{'barrel'=>2,'plank'=>8})
                expect(actual).to be(true)
            end
        end
        context "given ['large','large','large'],{'barrel'=>1,'plank'=>8}" do
            it "returns false" do
                actual = @barricade.all_entries_blocked(['large','large','large'],{'barrel'=>1,'plank'=>8})
                expect(actual).to be(false)
            end
        end
        context "given ['small','large'],{'boulder'=>1,'plank'=>1}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['small','large'],{'boulder'=>1,'plank'=>1})
                expect(actual).to be(true)
            end
        end
        context "given ['medium','large'],{'boulder'=>1,'plank'=>2}" do
            it "returns true" do
                actual = @barricade.all_entries_blocked(['medium','large'],{'boulder'=>1,'plank'=>2})
                expect(actual).to be(true)
            end
        end
    end
end