require 'battlestation'

describe BattleStation do
    before do
        @battle_station = BattleStation.new
    end
    describe ".calculate" do
        context "given the first 2d array" do
            it "should return [[0,0],[0,3],[3,0],[3,4],[5,2]]" do
                array = [[0,0],[0,3],[2,2],[2,3],[3,1],[3,0],[3,4],[5,2]]
                expect(@battle_station.calculate(array)).to match_array([[0,0],[0,3],[3,0],[3,4],[5,2]])
            end
        end
        context "given the second 2d array" do
            it "should return [[2,1],[5,5],[2,5],[5,1]]" do
                array = [[2,1],[5,5],[4,4],[3,4],[2,5],[5,1]]
                expect(@battle_station.calculate(array)).to match_array([[2,1],[5,5],[2,5],[5,1]])
            end
        end
        context "given the third 2d array" do
            it "should return [[2,1],[3,1],[1,3],[2,3]]" do
                array = [[2,1],[3,1],[2,2],[1,3],[2,3]]
                expect(@battle_station.calculate(array)).to match_array([[2,1],[3,1],[1,3],[2,3]])
            end
        end
        context "given the fourth 2d array" do
            it "should return [[2,5],[3,7],[7,7],[7,3],[6,2]]" do
                array = [[6,5],[2,5],[3,7],[3,3],[6,3],[5,4],[4,5],[7,7],[7,3],[6,2],[5,6]]
                expect(@battle_station.calculate(array)).to match_array([[2,5],[3,7],[7,7],[7,3],[6,2]])
            end
        end
        context "given the fifth 2d array" do
            it "should return [[0,0],[0,9],[9,0],[9,9]]" do
                array = [[1,5],[7,8],[6,2],[8,7],[0,0],[0,9],[9,0],[4,5],[2,3],[7,3],[9,9]]
                expect(@battle_station.calculate(array)).to match_array([[0,0],[0,9],[9,0],[9,9]])
            end
        end
    end
end