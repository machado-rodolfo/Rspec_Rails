require 'rails_helper'

RSpec.describe Customer, type: :model do

fixtures :all

  it 'Create a Customer' do
    customer = customers(:Rodolfo)

      expect(customer.full_name).to eq("Sr. Rodolfo Machado")
    end
  end
