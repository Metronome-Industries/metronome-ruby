# frozen_string_literal: true

# DEPRECATED: Plan-based resources are deprecated. Use contracts instead.

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example List all plans
def list_plans(client)
  page = client.v1.plans.list

  page.auto_paging_each do |plan|
    puts plan
  end
end

# @example Get plan details
def get_plan_details(client)
  response = client.v1.plans.get_details(
    plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )
  puts response.data
end

# @example List charges for a plan
def list_plan_charges(client)
  page = client.v1.plans.list_charges(
    plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )

  page.auto_paging_each do |charge|
    puts charge
  end
end

# @example List customers on a plan
def list_plan_customers(client)
  page = client.v1.plans.list_customers(
    plan_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )

  page.auto_paging_each do |customer|
    puts customer
  end
end

# Run examples (uncomment the one you want to try)
# list_plans(client)
# get_plan_details(client)
# list_plan_charges(client)
# list_plan_customers(client)
