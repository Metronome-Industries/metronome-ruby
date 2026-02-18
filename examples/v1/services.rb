# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example List all services
def list_services(client)
  response = client.v1.services.list
  puts response.data
end

# Run examples (uncomment the one you want to try)
# list_services(client)
