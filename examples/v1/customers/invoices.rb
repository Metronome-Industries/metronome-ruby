# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Retrieve a specific customer invoice
def retrieve_customer_invoice(client)
  response = client.v1.customers.invoices.retrieve(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    invoice_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
  )
  puts response.data
end

# @example List invoices for a customer
def list_customer_invoices(client)
  page = client.v1.customers.invoices.list(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )

  page.auto_paging_each do |invoice|
    puts invoice
  end
end

# @example Add a charge to a customer invoice
def add_charge_to_invoice(client)
  response = client.v1.customers.invoices.add_charge(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    charge_id: "5ae4b726-1ebe-439b-aa79-bab3f2c26eb4",
    customer_plan_id: "a23b4c5d-6e7f-8901-2345-6789abcdef01",
    description: "One-time setup fee",
    invoice_start_timestamp: "2024-01-01T00:00:00Z",
    price: 500.0,
    quantity: 1.0
  )
  puts response.data
end

# @example List invoice breakdowns for a customer
def list_customer_invoice_breakdowns(client)
  page = client.v1.customers.invoices.list_breakdowns(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    ending_before: "2024-02-01T00:00:00Z",
    starting_on: "2024-01-01T00:00:00Z"
  )

  page.auto_paging_each do |breakdown|
    puts breakdown
  end
end

# @example Retrieve a customer invoice as PDF
def retrieve_customer_invoice_pdf(client)
  pdf = client.v1.customers.invoices.retrieve_pdf(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    invoice_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
  )
  File.binwrite("invoice.pdf", pdf.string)
  puts "Invoice PDF saved to invoice.pdf"
end

# Run examples (uncomment the one you want to try)
# retrieve_customer_invoice(client)
# list_customer_invoices(client)
# add_charge_to_invoice(client)
# list_customer_invoice_breakdowns(client)
# retrieve_customer_invoice_pdf(client)
