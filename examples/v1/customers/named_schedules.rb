# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Retrieve a named schedule for a customer
def retrieve_customer_named_schedule(client)
  response = client.v1.customers.named_schedules.retrieve(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    schedule_name: "my-schedule"
  )
  puts response.data
end

# @example Update a named schedule for a customer
def update_customer_named_schedule(client)
  client.v1.customers.named_schedules.update(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    schedule_name: "my-schedule",
    starting_at: "2024-01-01T00:00:00Z",
    value: {"key" => "value"}
  )
  puts "Named schedule updated"
end

# Run examples (uncomment the one you want to try)
# retrieve_customer_named_schedule(client)
# update_customer_named_schedule(client)
