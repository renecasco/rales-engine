require 'rails_helper'

describe "Invoices API" do
  it "sends a list of invoices" do
    create_list(:invoice, 3, merchant: create(:merchant), customer: create(:customer))

    get '/api/v1/invoices'

    expect(response).to be_successful

    invoices = JSON.parse(response.body)

    expect(invoices.count).to eq(3)
  end

  it "can get one invoice by its id" do
    id = create(:invoice, merchant: create(:merchant), customer: create(:customer)).id

    get "/api/v1/invoices/#{id}"

    invoice = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item["id"]).to eq(id)
  end
end
