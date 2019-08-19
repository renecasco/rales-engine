require 'rails_helper'

describe "Merchants API" do
  it "sends a list of merchants" do
    create_list(:merchant, 3)

    get 'api/v1/merchants'

    expect(reponse.to be_succesful)
  end
end
