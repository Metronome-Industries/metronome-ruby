# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Update product ordering on a rate card
def update_product_orders(client)
  response = client.v1.contracts.rate_cards.product_orders.update(
    product_moves: [
      {product_id: "13117714-3f05-48e5-a6e9-a66093f13b4d", position: 0},
      {product_id: "f14d6729-6a44-4b13-9908-9387f1918790", position: 1}
    ],
    rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )
  puts response.data
end

# @example Set product ordering on a rate card
def set_product_orders(client)
  response = client.v1.contracts.rate_cards.product_orders.set(
    product_order: [
      "13117714-3f05-48e5-a6e9-a66093f13b4d",
      "f14d6729-6a44-4b13-9908-9387f1918790"
    ],
    rate_card_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# update_product_orders(client)
# set_product_orders(client)
