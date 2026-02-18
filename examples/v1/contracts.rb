# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a contract
def create_contract(client)
  response = client.v1.contracts.create(
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    starting_at: "2024-01-01T00:00:00.000Z"
  )
  puts response.data
end

# @example Retrieve a contract
def retrieve_contract(client)
  response = client.v1.contracts.retrieve(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# @example List contracts for a customer
def list_contracts(client)
  response = client.v1.contracts.list(
    customer_id: "9b85c1c1-5238-4f2a-a409-61412905e1e1"
  )
  puts response.data
end

# @example Add a manual balance entry to a contract
def add_manual_balance_entry(client)
  client.v1.contracts.add_manual_balance_entry(
    id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85",
    amount: -1000,
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    reason: "Adjustment for overpayment",
    segment_id: "66368e29-3f97-4d15-a6e9-120897f0070a"
  )
  puts "Manual balance entry added"
end

# @example Amend a contract
def amend_contract(client)
  response = client.v1.contracts.amend(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    starting_at: "2024-06-01T00:00:00.000Z"
  )
  puts response.data
end

# @example Archive a contract
def archive_contract(client)
  response = client.v1.contracts.archive(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    void_invoices: true
  )
  puts response.data
end

# @example Create historical invoices for a contract
def create_historical_invoices(client)
  response = client.v1.contracts.create_historical_invoices(
    invoices: [
      {
        contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        credit_type_id: "2714e483-4ff1-48e4-9e25-ac732e8f24f2",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        exclusive_end_date: "2024-02-01T00:00:00.000Z",
        inclusive_start_date: "2024-01-01T00:00:00.000Z",
        issue_date: "2024-02-01T00:00:00.000Z",
        usage_line_items: [
          {
            exclusive_end_date: "2024-02-01T00:00:00.000Z",
            inclusive_start_date: "2024-01-01T00:00:00.000Z",
            product_id: "f14d6729-6a44-4b13-9908-9387f1918790"
          }
        ]
      }
    ],
    preview: false
  )
  puts response.data
end

# @example Get net balance for a customer's contracts
def get_net_balance(client)
  response = client.v1.contracts.get_net_balance(
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# @example List contract balances for a customer
def list_contract_balances(client)
  page = client.v1.contracts.list_balances(
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )

  page.auto_paging_each do |balance|
    puts balance
  end
end

# @example Retrieve a contract's rate schedule
def retrieve_rate_schedule(client)
  response = client.v1.contracts.retrieve_rate_schedule(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# @example Retrieve subscription quantity history for a contract
def retrieve_subscription_quantity_history(client)
  response = client.v1.contracts.retrieve_subscription_quantity_history(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    subscription_id: "1a824d53-bde6-4d82-96d7-6347ff227d5c"
  )
  puts response.data
end

# @example Schedule a pro services invoice
def schedule_pro_services_invoice(client)
  response = client.v1.contracts.schedule_pro_services_invoice(
    contract_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    customer_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    issued_at: "2024-01-15T00:00:00.000Z",
    line_items: [{professional_service_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"}]
  )
  puts response.data
end

# @example Set a usage filter on a contract
def set_usage_filter(client)
  client.v1.contracts.set_usage_filter(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    group_key: "business_subscription_id",
    group_values: %w[ID-1 ID-2],
    starting_at: "2024-01-01T00:00:00.000Z"
  )
  puts "Usage filter set"
end

# @example Update contract end date
def update_contract_end_date(client)
  response = client.v1.contracts.update_end_date(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# create_contract(client)
# retrieve_contract(client)
# list_contracts(client)
# add_manual_balance_entry(client)
# amend_contract(client)
# archive_contract(client)
# create_historical_invoices(client)
# get_net_balance(client)
# list_contract_balances(client)
# retrieve_rate_schedule(client)
# retrieve_subscription_quantity_history(client)
# schedule_pro_services_invoice(client)
# set_usage_filter(client)
# update_contract_end_date(client)
