# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a commit for a customer
def create_customer_commit(client)
  response = client.v1.customers.commits.create(
    access_schedule: {
      schedule_items: [
        {
          amount: 10_000.0,
          starting_at: "2024-01-01T00:00:00Z",
          ending_before: "2025-01-01T00:00:00Z"
        }
      ]
    },
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    priority: 1.0,
    product_id: "f14d6729-6a44-4b13-9908-9387f1918790",
    type: :prepaid
  )
  puts response.data
end

# @example List commits for a customer
def list_customer_commits(client)
  page = client.v1.customers.commits.list(
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )

  page.auto_paging_each do |commit|
    puts commit
  end
end

# @example Update the end date of a customer commit
def update_customer_commit_end_date(client)
  response = client.v1.customers.commits.update_end_date(
    commit_id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# create_customer_commit(client)
# list_customer_commits(client)
# update_customer_commit_end_date(client)
