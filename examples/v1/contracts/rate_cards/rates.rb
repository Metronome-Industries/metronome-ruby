# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example List rates on a rate card at a specific time
def list_rates(client)
  page = client.v1.contracts.rate_cards.rates.list(
    at: "2024-01-01T00:00:00.000Z",
    rate_card_id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe"
  )

  page.auto_paging_each do |rate|
    puts "#{rate.product_name}: #{rate.rate}"
  end
end

# @example Add a rate to a rate card
def add_rate(client)
  response = client.v1.contracts.rate_cards.rates.add(
    entitled: true,
    product_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    rate_type: :FLAT,
    starting_at: "2024-01-01T00:00:00.000Z"
  )
  puts response.data
end

# @example Add multiple rates to a rate card
def add_many_rates(client)
  response = client.v1.contracts.rate_cards.rates.add_many(
    rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    rates: [
      {
        entitled: true,
        product_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        rate_type: :FLAT,
        starting_at: "2024-01-01T00:00:00.000Z"
      },
      {
        entitled: true,
        product_id: "f14d6729-6a44-4b13-9908-9387f1918790",
        rate_type: :FLAT,
        starting_at: "2024-01-01T00:00:00.000Z"
      }
    ]
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# list_rates(client)
# add_rate(client)
# add_many_rates(client)
