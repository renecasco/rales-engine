require 'csv'

namespace :import do
  desc "rake import data from customers csv file"
    task customers_data: :environment do
      require 'csv'
      CSV.foreach('data/customers.csv', :headers => true) do |row|
        Customer.create!(row.to_hash)
    end
  end

  desc "rake import data from invoice_items csv file"
    task invoice_items_data: :environment do
      require 'csv'
      CSV.foreach('data/invoice_items.csv', :headers => true) do |row|
        InvoiceItem.create!(row.to_hash)
    end
  end

  desc "rake import data from invoices csv file"
    task invoices_data: :environment do
      require 'csv'
      CSV.foreach('data/invoices.csv', :headers => true) do |row|
        Invoice.create!(row.to_hash)
    end
  end

  desc "rake import data from items csv file"
    task items_data: :environment do
      require 'csv'
      CSV.foreach('data/items.csv', :headers => true) do |row|
        Item.create!(row.to_hash)
    end
  end

  desc "rake import data from merchants csv file"
    task merchants_data: :environment do
      require 'csv'
      CSV.foreach('data/merchants.csv', :headers => true) do |row|
        Merchant.create!(row.to_hash)
    end
  end

  desc "rake import data from transactions csv file"
    task transactions_data: :environment do
      require 'csv'
      CSV.foreach('data/transactions.csv', :headers => true) do |row|
        Transaction.create!(row.to_hash)
    end
  end
end
