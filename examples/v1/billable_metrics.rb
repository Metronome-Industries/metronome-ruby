# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a billable metric
def create_billable_metric(client)
  response = client.v1.billable_metrics.create(
    name: "API Calls"
  )
  puts response.data
end

# @example Retrieve a billable metric by ID
def retrieve_billable_metric(client)
  response = client.v1.billable_metrics.retrieve(
    billable_metric_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# @example List all billable metrics
def list_billable_metrics(client)
  page = client.v1.billable_metrics.list

  page.auto_paging_each do |metric|
    puts "#{metric.name} (#{metric.id})"
  end
end

# @example Archive a billable metric
def archive_billable_metric(client)
  response = client.v1.billable_metrics.archive(
    id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# create_billable_metric(client)
# retrieve_billable_metric(client)
# list_billable_metrics(client)
# archive_billable_metric(client)
