# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a billing config for a customer
def create_customer_billing_config(client)
  client.v1.customers.billing_config.create(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    billing_provider_type: :stripe,
    billing_provider_customer_id: "cus_ABC123"
  )
  puts "Billing config created"
end

# @example Retrieve a billing config for a customer
def retrieve_customer_billing_config(client)
  response = client.v1.customers.billing_config.retrieve(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    billing_provider_type: :stripe
  )
  puts response.data
end

# @example Delete a billing config for a customer
def delete_customer_billing_config(client)
  client.v1.customers.billing_config.delete(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    billing_provider_type: :stripe
  )
  puts "Billing config deleted"
end

# Run examples (uncomment the one you want to try)
# create_customer_billing_config(client)
# retrieve_customer_billing_config(client)
# delete_customer_billing_config(client)
