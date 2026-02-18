# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Retrieve a named schedule for a rate card on a contract
def retrieve_rate_card_named_schedule(client)
  response = client.v1.contracts.rate_cards.named_schedules.retrieve(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    schedule_name: "my-schedule"
  )
  puts response.data
end

# @example Update a named schedule for a rate card on a contract
def update_rate_card_named_schedule(client)
  client.v1.contracts.rate_cards.named_schedules.update(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    schedule_name: "my-schedule",
    starting_at: "2024-01-01T00:00:00Z",
    value: {"key" => "value"}
  )
  puts "Rate card named schedule updated"
end

# Run examples (uncomment the one you want to try)
# retrieve_rate_card_named_schedule(client)
# update_rate_card_named_schedule(client)
