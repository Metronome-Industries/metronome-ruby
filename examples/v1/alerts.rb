# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a threshold notification
def create_alert(client)
  response = client.v1.alerts.create(
    alert_type: :spend_threshold_reached,
    name: "$100 spend threshold reached",
    threshold: 10_000
  )
  puts response.data
end

# @example Archive a threshold notification
def archive_alert(client)
  response = client.v1.alerts.archive(
    id: "8deed800-1b7a-495d-a207-6c52bac54dc9"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# create_alert(client)
# archive_alert(client)
