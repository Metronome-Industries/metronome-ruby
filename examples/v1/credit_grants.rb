# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a credit grant
def create_credit_grant(client)
  response = client.v1.credit_grants.create(
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    expires_at: "2025-03-01T00:00:00Z",
    grant_amount: {amount: 1000.0, credit_type_id: "2714e483-4ff1-48e4-9e25-ac732e8f24f2"},
    name: "Onboarding Credit",
    paid_amount: {amount: 0.0, credit_type_id: "2714e483-4ff1-48e4-9e25-ac732e8f24f2"},
    priority: 1.0
  )
  puts response.data
end

# @example List credit grants
def list_credit_grants(client)
  page = client.v1.credit_grants.list

  page.auto_paging_each do |grant|
    puts grant
  end
end

# @example Edit a credit grant
def edit_credit_grant(client)
  response = client.v1.credit_grants.edit(
    id: "9b85c1c1-5238-4f2a-a409-61412905e1e1"
  )
  puts response.data
end

# @example List credit grant entries
def list_credit_grant_entries(client)
  page = client.v1.credit_grants.list_entries

  page.auto_paging_each do |entry|
    puts entry
  end
end

# @example Void a credit grant
def void_credit_grant(client)
  response = client.v1.credit_grants.void(
    id: "9b85c1c1-5238-4f2a-a409-61412905e1e1"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# create_credit_grant(client)
# list_credit_grants(client)
# edit_credit_grant(client)
# list_credit_grant_entries(client)
# void_credit_grant(client)
