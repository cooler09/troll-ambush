require 'traps'

describe Traps do
    before do
        @traps = Traps.new
        @default_array = Array.new(10){Array.new(10){'_'}}
    end
    describe ".place" do
        context "given ['rolling_spikes']" do
            it "returns 10x10 2d array with pos [0,0] being 'R'" do
                @default_array[0][0] = 'R'
                expect(@traps.place(['rolling_spikes'])).to match_array(@default_array)
            end
        end
        context "given ['punji_stick_pit']" do
            it "returns 10x10 2d array with pos [9,0] being 'P'" do
                @default_array[9][0] = 'P'
                expect(@traps.place(['punji_stick_pit'])).to match_array(@default_array)
            end
        end
        context "given ['corn_flour_explosive']" do
            it "returns 10x10 2d array with pos [0,9] being 'C'" do
                @default_array[0][9] = 'C'
                expect(@traps.place(['corn_flour_explosive'])).to match_array(@default_array)
            end
        end
        context "given ['spring_spear']" do
            it "returns 10x10 2d array with pos [9,9] being 'S'" do
                @default_array[9][9] = 'S'
                expect(@traps.place(['spring_spear'])).to match_array(@default_array)
            end
        end
        context "given ['rolling_spikes','rolling_spikes']" do
            it "returns 10x10 2d array with pos [0,0],[1,1] being 'R'" do
                @default_array[0][0] = 'R'
                @default_array[1][1] = 'R'
                expect(@traps.place(['rolling_spikes','rolling_spikes'])).to match_array(@default_array)
            end
        end
        context "given ['rolling_spikes','rolling_spikes','rolling_spikes']" do
            it "returns 10x10 2d array with pos [0,0],[1,1],[2,2] being 'R'" do
                @default_array[0][0] = 'R'
                @default_array[1][1] = 'R'
                @default_array[2][2] = 'R'
                expect(@traps.place(['rolling_spikes','rolling_spikes','rolling_spikes'])).to match_array(@default_array)
            end
        end
        context "given ['punji_stick_pit','punji_stick_pit']" do
            it "returns 10x10 2d array with pos [9,0],[8,1] being 'P'" do
                @default_array[9][0] = 'P'
                @default_array[8][1] = 'P'
                expect(@traps.place(['punji_stick_pit','punji_stick_pit'])).to match_array(@default_array)
            end
        end
        context "given ['corn_flour_explosive','corn_flour_explosive']" do
            it "returns 10x10 2d array with pos [0,9],[1,8] being 'C'" do
                @default_array[0][9] = 'C'
                @default_array[1][8] = 'C'
                expect(@traps.place(['corn_flour_explosive','corn_flour_explosive'])).to match_array(@default_array)
            end
        end
        context "given ['spring_spear','spring_spear']" do
            it "returns 10x10 2d array with pos [9,9],[8,8] being 'S'" do
                @default_array[9][9] = 'S'
                @default_array[8][8] = 'S'
                expect(@traps.place(['spring_spear','spring_spear'])).to match_array(@default_array)
            end
        end
        context "given ['spring_spear','corn_flour_explosive','punji_stick_pit','rolling_spikes']" do
            it "returns 10x10 2d array with pos [9,9]='S',[0,9]='C',[9,0]='P',[0,0]='R'" do
                @default_array[9][9] = 'S'
                @default_array[0][9] = 'C'
                @default_array[9][0] = 'P'
                @default_array[0][0] = 'R'
                expect(@traps.place(['spring_spear','corn_flour_explosive','punji_stick_pit','rolling_spikes'])).to match_array(@default_array)
            end
        end
        context "given ['rolling_spikes','jester_hat']" do
            it "returns 10x10 2d array with pos [0,0] being 'R' and ignores invalid traps" do
                @default_array[0][0] = 'R'
                expect(@traps.place(['rolling_spikes','jester_hat'])).to match_array(@default_array)
            end
        end
    end
end