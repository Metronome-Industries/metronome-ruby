# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Retrieve a customer alert
def retrieve_customer_alert(client)
  response = client.v1.customers.alerts.retrieve(
    alert_id: "8deed800-1b7a-495d-a207-6c52bac54dc9",
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )
  puts response.data
end

# @example List alerts for a customer
def list_customer_alerts(client)
  page = client.v1.customers.alerts.list(
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )

  page.auto_paging_each do |alert|
    puts alert
  end
end

# @example Reset a customer alert
def reset_customer_alert(client)
  client.v1.customers.alerts.reset(
    alert_id: "8deed800-1b7a-495d-a207-6c52bac54dc9",
    customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc"
  )
  puts "Customer alert reset"
end

# Run examples (uncomment the one you want to try)
# retrieve_customer_alert(client)
# list_customer_alerts(client)
# reset_customer_alert(client)
