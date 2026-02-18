# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Retrieve a contract (V2)
def retrieve_contract(client)
  response = client.v2.contracts.retrieve(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# @example List contracts for a customer (V2)
def list_contracts(client)
  response = client.v2.contracts.list(
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# @example Edit a contract (V2)
def edit_contract(client)
  response = client.v2.contracts.edit(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# @example Edit a commit on a contract (V2)
def edit_contract_commit(client)
  response = client.v2.contracts.edit_commit(
    commit_id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# @example Edit a credit on a contract (V2)
def edit_contract_credit(client)
  response = client.v2.contracts.edit_credit(
    credit_id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# @example Get edit history for a contract (V2)
def get_contract_edit_history(client)
  response = client.v2.contracts.get_edit_history(
    contract_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# retrieve_contract(client)
# list_contracts(client)
# edit_contract(client)
# edit_contract_commit(client)
# edit_contract_credit(client)
# get_contract_edit_history(client)
