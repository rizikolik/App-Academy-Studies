class Cat
    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
  end
  
  describe "Cat" do
    let(:cat) { Cat.new("Sennacy") }
  
    describe "name property" do
      it "returns something we can manipulate" do
        cat.name = "Rocky"
        expect(cat.name).to eq("Rocky")
      end
  
      it "does not persist state" do
        expect(cat.name).to eq("Sennacy")
      end
    end
  end


  #  Implementing Testing with classes that requires other classes.
  # We are using DOuble Method for this purpose.
class Order
  def initialize(customer, product)
      @customer = customer
      @product = product
  end

  def send_confirmation_email
    email(
      to: @customer.email_address,
      subject: "Order Confirmation",
      body: self.summary
    )
  end

  def charge_customer
      @customer.debit_account(@product.cost)
  end
end

RSpec.describe Order do
  let(:customer) { double("customer") }
  subject(:order) { Order.new(customer) }

  it "sends email successfully" do
    allow(customer).to receive(:email_address).and_return("ned@appacademy.io")

    expect do
      order.send_confirmation_email
    end.to_not raise_exception
  end
end