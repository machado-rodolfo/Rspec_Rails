require 'rails_helper'

RSpec.describe Customer, type: :model do

  it '#full_name - Sobrescrevendo Atributo' do
    customer = create(:customer, name: "Rodolfo Machado")
    expect(customer.full_name).to eq("Sr. Rodolfo Machado")
  end

  it 'Herança' do
    customer = create(:customer_default)
    expect(customer.vip).to eq(false)
  end

  it '#full_name' do
    customer = create(:user) # ou create(:customer)
    expect(customer.full_name).to start_with("Sr. ")
  end

    it { expect{ create(:customer) }.to change {Customer.all.size}.by(1) }
  end
