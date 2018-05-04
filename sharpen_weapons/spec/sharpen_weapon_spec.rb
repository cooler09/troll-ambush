require 'sharpen_weapon'

describe Weapon do
    context "initialized with durability greater than 1.0" do
        it "raises 'durability cannot exceed 1.0'" do
            expect{Weapon.new("axe",1.1)}.to raise_error("durability cannot exceed 1.0")
        end
    end
    context "initialized with durability less than 0.0" do
        it "raises 'durability cannot be less than 0.0'" do
            expect{Weapon.new("axe",-0.1)}.to raise_error("durability cannot be less than 0.0")
        end
    end
end
describe "Axe weapon" do
    before do
        @type = "axe"
    end
    describe ".sharpen" do 
        context "when called 1 times with 1.0 dur" do
            it "returns true" do
                weapon = Weapon.new(@type,1.0)
                successful = weapon.sharpen
                expect(successful).to be(true)
            end
        end
        context "when called 1 times with 0.4 dur" do
            it "returns true" do
                weapon = Weapon.new(@type,0.4)
                successful = weapon.sharpen
                expect(successful).to be(true)
            end
        end
        context "when called 2 times with 0.7 dur" do
            it "returns true" do
                weapon = Weapon.new(@type,0.7)
                weapon.sharpen
                successful = weapon.sharpen
                expect(successful).to be(true)
            end
        end
        context "when called 1 times with 0.3 dur" do
            it "returns false" do
                weapon = Weapon.new(@type,0.3)
                successful = weapon.sharpen
                expect(successful).to be(false)
            end
        end
        context "when called 2 times with 0.6 dur" do
            it "returns false" do
                weapon = Weapon.new(@type,0.6)
                weapon.sharpen
                successful = weapon.sharpen
                expect(successful).to be(false)
            end
        end
    end
end
describe "Mace weapon" do
    before do
        @type = "mace"
    end
    describe ".sharpen" do 
        context "when called 1 times with 1.0 dur" do
            it "returns true" do
                weapon = Weapon.new(@type,1.0)
                successful = weapon.sharpen
                expect(successful).to be(true)
            end
        end
        context "when called 1 times with 0.2 dur" do
            it "returns true" do
                weapon = Weapon.new(@type,0.2)
                successful = weapon.sharpen
                expect(successful).to be(true)
            end
        end
        context "when called 2 times with 0.3 dur" do
            it "returns true" do
                weapon = Weapon.new(@type,0.3)
                weapon.sharpen
                successful = weapon.sharpen
                expect(successful).to be(true)
            end
        end
        context "when called 1 times with 0.1 dur" do
            it "returns false" do
                weapon = Weapon.new(@type,0.1)
                successful = weapon.sharpen
                expect(successful).to be(false)
            end
        end
        context "when called 2 times with 0.2 dur" do
            it "returns false" do
                weapon = Weapon.new(@type,0.2)
                weapon.sharpen
                successful = weapon.sharpen
                expect(successful).to be(false)
            end
        end
    end
end
describe "Sword weapon" do
    before do
        @type = "sword"
    end
    describe ".sharpen" do 
        context "when called 1 times with 1.0 dur" do
            it "returns true" do
                weapon = Weapon.new(@type,1.0)
                successful = weapon.sharpen
                expect(successful).to be(true)
            end
        end
        context "when called 1 times with 0.6 dur" do
            it "returns true" do
                weapon = Weapon.new(@type,0.6)
                successful = weapon.sharpen
                expect(successful).to be(true)
            end
        end
        context "when called 1 times with 0.5 dur" do
            it "returns false" do
                weapon = Weapon.new(@type,0.5)
                successful = weapon.sharpen
                expect(successful).to be(false)
            end
        end
        context "when called 2 times with 1.0 dur" do
            it "returns false" do
                weapon = Weapon.new(@type,1.0)
                weapon.sharpen
                successful = weapon.sharpen
                expect(successful).to be(false)
            end
        end
    end
end
describe "Arrow weapon" do
    before do
        @type = "arrow"
    end
    describe ".sharpen" do 
        context "when called 1 times with 1.0 dur" do
            it "returns true" do
                weapon = Weapon.new(@type,1.0)
                successful = weapon.sharpen
                expect(successful).to be(true)
            end
        end
        context "when called 1 times with 0.8 dur" do
            it "returns true" do
                weapon = Weapon.new(@type,0.8)
                successful = weapon.sharpen
                expect(successful).to be(true)
            end
        end
        context "when called 1 times with 0.7 dur" do
            it "returns false" do
                weapon = Weapon.new(@type,0.7)
                successful = weapon.sharpen
                expect(successful).to be(false)
            end
        end
        context "when called 2 times with 1.0 dur" do
            it "returns false" do
                weapon = Weapon.new(@type,1.0)
                weapon.sharpen
                successful = weapon.sharpen
                expect(successful).to be(false)
            end
        end
    end
end