# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Get an embeddable dashboard URL
def get_embeddable_url(client)
  response = client.v1.dashboards.get_embeddable_url(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    dashboard: :invoices
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# get_embeddable_url(client)
