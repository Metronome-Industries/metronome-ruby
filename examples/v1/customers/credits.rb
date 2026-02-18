# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a credit for a customer
def create_customer_credit(client)
  response = client.v1.customers.credits.create(
    access_schedule: {
      schedule_items: [
        {
          amount: 5000.0,
          starting_at: "2024-01-01T00:00:00Z",
          ending_before: "2024-07-01T00:00:00Z"
        }
      ]
    },
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    priority: 1.0,
    product_id: "f14d6729-6a44-4b13-9908-9387f1918790"
  )
  puts response.data
end

# @example List credits for a customer
def list_customer_credits(client)
  page = client.v1.customers.credits.list(
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )

  page.auto_paging_each do |credit|
    puts credit
  end
end

# @example Update the end date of a customer credit
def update_customer_credit_end_date(client)
  response = client.v1.customers.credits.update_end_date(
    access_ending_before: "2024-04-01T00:00:00Z",
    credit_id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# create_customer_credit(client)
# list_customer_credits(client)
# update_customer_credit_end_date(client)
