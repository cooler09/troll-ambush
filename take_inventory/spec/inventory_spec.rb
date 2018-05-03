require 'inventory'

describe Inventory do
    before do
        @inv = Inventory.new
    end
    describe ".take_inventory" do
        context "given ['arrow']" do
            it "returns {'arrow'=>1}" do
                expect(@inv.take_inventory(['arrow'])).to include({'arrow'=>1})
            end
        end
        context "given ['bow']" do
            it "returns {'bow'=>1}" do
                expect(@inv.take_inventory(['bow'])).to include({'bow'=>1})
            end
        end
        context "given ['sword']" do
            it "returns {'sword'=>1}" do
                expect(@inv.take_inventory(['sword'])).to include({'sword'=>1})
            end
        end
        context "given ['mace','bow','arrow','arrow']" do
            it "returns {'mace'=>1, 'bow'=>1, 'arrow'=>2}" do
                expect(@inv.take_inventory(['mace','bow','arrow','arrow'])).to include({'mace'=>1, 'bow'=>1, 'arrow'=>2})
            end
        end
        
        context "given ['torch','torch','torch','shield','shield','axe']" do
            it "returns {'torch'=>3, 'axe'=>1, 'shield'=>2}" do
                expect(@inv.take_inventory(['mace','bow','arrow','arrow'])).to include({'mace'=>1, 'bow'=>1, 'arrow'=>2})
            end
        end
        context "given ['mace','bow','arrow','arrow','axe','jester hat','rusty pitchfork']" do
            it "returns {'mace'=>1, 'bow'=>1, 'arrow'=>2, 'axe'=>1}" do
                expect(@inv.take_inventory(['mace','bow','arrow','arrow','axe','jester hat','rusty pitchfork'])).to include({'mace'=>1, 'bow'=>1, 'arrow'=>2, 'axe'=>1})
            end
        end
    end

end