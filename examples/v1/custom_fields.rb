# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Add a custom field key
def add_custom_field_key(client)
  client.v1.custom_fields.add_key(
    enforce_uniqueness: true,
    entity: :customer,
    key: "salesforce_id"
  )
  puts "Custom field key added"
end

# @example Delete custom field values from an entity
def delete_custom_field_values(client)
  client.v1.custom_fields.delete_values(
    entity: :customer,
    entity_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    keys: ["salesforce_id"]
  )
  puts "Custom field values deleted"
end

# @example List custom field keys
def list_custom_field_keys(client)
  page = client.v1.custom_fields.list_keys

  page.auto_paging_each do |key|
    puts key
  end
end

# @example Remove a custom field key
def remove_custom_field_key(client)
  client.v1.custom_fields.remove_key(
    entity: :customer,
    key: "salesforce_id"
  )
  puts "Custom field key removed"
end

# @example Set custom field values on an entity
def set_custom_field_values(client)
  client.v1.custom_fields.set_values(
    custom_fields: {"salesforce_id" => "SF-12345"},
    entity: :customer,
    entity_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
  )
  puts "Custom field values set"
end

# Run examples (uncomment the one you want to try)
# add_custom_field_key(client)
# delete_custom_field_values(client)
# list_custom_field_keys(client)
# remove_custom_field_key(client)
# set_custom_field_values(client)
