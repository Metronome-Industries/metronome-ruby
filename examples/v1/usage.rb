# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example List usage data
def list_usage(client)
  page = client.v1.usage.list(
    ending_before: "2024-01-03T00:00:00Z",
    starting_on: "2024-01-01T00:00:00Z",
    window_size: :HOUR
  )

  page.auto_paging_each do |usage|
    puts "#{usage.billable_metric_name}: #{usage.value}"
  end
end

# @example Ingest usage events
def ingest_usage(client)
  client.v1.usage.ingest(
    usage: [
      {
        customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
        event_type: "api_call",
        timestamp: "2024-01-15T12:00:00Z",
        transaction_id: "2024-01-15T12:00:00Z_api_call_001"
      }
    ]
  )
  puts "Usage ingested"
end

# @example List usage with groups
def list_usage_with_groups(client)
  page = client.v1.usage.list_with_groups(
    billable_metric_id: "222796fd-d29c-429e-89b2-549fabda4ed6",
    customer_id: "04ca7e72-4229-4a6e-ab11-9f7376fccbcb",
    window_size: :HOUR
  )

  page.auto_paging_each do |usage|
    puts "#{usage.group_key}: #{usage.group_value} = #{usage.value}"
  end
end

# @example Search usage by transaction IDs
def search_usage(client)
  response = client.v1.usage.search(
    transaction_ids: ["2024-01-15T12:00:00Z_api_call_001"]
  )
  response.each { |item| puts item }
end

# Run examples (uncomment the one you want to try)
# list_usage(client)
# ingest_usage(client)
# list_usage_with_groups(client)
# search_usage(client)
