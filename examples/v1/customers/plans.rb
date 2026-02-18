# frozen_string_literal: true

# DEPRECATED: Plan-based resources are deprecated. Use contracts instead.

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example List plans for a customer
def list_customer_plans(client)
  page = client.v1.customers.plans.list(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )

  page.auto_paging_each do |plan|
    puts plan
  end
end

# @example Add a plan to a customer
def add_customer_plan(client)
  response = client.v1.customers.plans.add(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    plan_id: "6a37bb88-8538-48c5-b37b-a41c836328bd",
    starting_on: "2024-01-01T00:00:00Z"
  )
  puts response.data
end

# @example End a customer plan
def end_customer_plan(client)
  response = client.v1.customers.plans.end_(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_plan_id: "a23b4c5d-6e7f-8901-2345-6789abcdef01"
  )
  puts response.data
end

# @example List price adjustments for a customer plan
def list_customer_plan_price_adjustments(client)
  page = client.v1.customers.plans.list_price_adjustments(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_plan_id: "a23b4c5d-6e7f-8901-2345-6789abcdef01"
  )

  page.auto_paging_each do |adjustment|
    puts adjustment
  end
end

# Run examples (uncomment the one you want to try)
# list_customer_plans(client)
# add_customer_plan(client)
# end_customer_plan(client)
# list_customer_plan_price_adjustments(client)
