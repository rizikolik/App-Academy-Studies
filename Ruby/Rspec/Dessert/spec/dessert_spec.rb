require "dessert"


describe Dessert  do
    subject(:fake) {Dessert.new("sugar",50)}
    let (:milk) {double("milk")}
    describe "#initialize"do
        it "takes in a type " do
         expect(fake.type).to eq("sugar")
            
        end
        it "takes an amount" do
            expect(fake.amount).to eq(50)
        end
        context "with a  huge amount" do
            subject(:brownie){Dessert.new("brownie",10000)}
            it "sets the type  to giant type" do
                expect(brownie.type).to eq("giant brownie")
            end
        end
        it "raise an error if amount is not  a number" do 
           expect{ Dessert.new("brownie","tons") }.to raise_error
        end
    end
    describe "#eat"do
        it "calls #dip for accompanying the drink" do
            expect(milk).to receive(:dip).with(fake)
            fake.eat(milk)
        end
    end
    
end
