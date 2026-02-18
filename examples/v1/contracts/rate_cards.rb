# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a rate card
def create_rate_card(client)
  response = client.v1.contracts.rate_cards.create(
    name: "Standard Rate Card"
  )
  puts response.data
end

# @example Retrieve a rate card by ID
def retrieve_rate_card(client)
  response = client.v1.contracts.rate_cards.retrieve(
    id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe"
  )
  puts response.data
end

# @example Update a rate card
def update_rate_card(client)
  response = client.v1.contracts.rate_cards.update(
    rate_card_id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe"
  )
  puts response.data
end

# @example List all rate cards
def list_rate_cards(client)
  page = client.v1.contracts.rate_cards.list

  page.auto_paging_each do |rate_card|
    puts rate_card
  end
end

# @example Archive a rate card
def archive_rate_card(client)
  response = client.v1.contracts.rate_cards.archive(
    id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe"
  )
  puts response.data
end

# @example Retrieve a rate card's rate schedule
def retrieve_rate_card_rate_schedule(client)
  response = client.v1.contracts.rate_cards.retrieve_rate_schedule(
    rate_card_id: "f3d51ae8-f283-44e1-9933-a3cf9ad7a6fe",
    starting_at: "2024-01-01T00:00:00.000Z"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# create_rate_card(client)
# retrieve_rate_card(client)
# update_rate_card(client)
# list_rate_cards(client)
# archive_rate_card(client)
# retrieve_rate_card_rate_schedule(client)
