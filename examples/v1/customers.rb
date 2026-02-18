# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a customer
def create_customer(client)
  response = client.v1.customers.create(
    name: "Acme, Inc."
  )
  puts response.data
end

# @example Retrieve a customer by ID
def retrieve_customer(client)
  response = client.v1.customers.retrieve(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )
  puts response.data
end

# @example List all customers
def list_customers(client)
  page = client.v1.customers.list

  page.auto_paging_each do |customer|
    puts "#{customer.name} (#{customer.id})"
  end
end

# @example Archive a customer
def archive_customer(client)
  response = client.v1.customers.archive(
    id: "8deed800-1b7a-495d-a207-6c52bac54dc9"
  )
  puts response.data
end

# @example List billable metrics for a customer
def list_customer_billable_metrics(client)
  page = client.v1.customers.list_billable_metrics(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )

  page.auto_paging_each do |metric|
    puts "#{metric.name} (#{metric.id})"
  end
end

# @example List costs for a customer
def list_customer_costs(client)
  page = client.v1.customers.list_costs(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    ending_before: "2024-02-01T00:00:00Z",
    starting_on: "2024-01-01T00:00:00Z"
  )

  page.auto_paging_each do |cost|
    puts cost
  end
end

# @example Preview events for a customer
def preview_customer_events(client)
  response = client.v1.customers.preview_events(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    events: [{event_type: "heartbeat"}]
  )
  puts response.data
end

# @example Retrieve billing configurations for a customer
def retrieve_customer_billing_configurations(client)
  response = client.v1.customers.retrieve_billing_configurations(
    customer_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
  )
  puts response.data
end

# @example Set billing configurations for customers
def set_customer_billing_configurations(client)
  response = client.v1.customers.set_billing_configurations(
    data: [
      {billing_provider: :stripe, customer_id: "4db51251-61de-4bfe-b9ce-495e244f3491"}
    ]
  )
  puts response.data
end

# @example Set ingest aliases for a customer
def set_customer_ingest_aliases(client)
  client.v1.customers.set_ingest_aliases(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    ingest_aliases: ["team@example.com"]
  )
  puts "Ingest aliases set"
end

# @example Set customer name
def set_customer_name(client)
  response = client.v1.customers.set_name(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    name: "Acme Corp."
  )
  puts response.data
end

# @example Update customer config
def update_customer_config(client)
  client.v1.customers.update_config(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )
  puts "Customer config updated"
end

# Run examples (uncomment the one you want to try)
# create_customer(client)
# retrieve_customer(client)
# list_customers(client)
# archive_customer(client)
# list_customer_billable_metrics(client)
# list_customer_costs(client)
# preview_customer_events(client)
# retrieve_customer_billing_configurations(client)
# set_customer_billing_configurations(client)
# set_customer_ingest_aliases(client)
# set_customer_name(client)
# update_customer_config(client)
