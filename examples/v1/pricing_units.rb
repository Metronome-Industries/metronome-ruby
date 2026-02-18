# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example List all pricing units
def list_pricing_units(client)
  page = client.v1.pricing_units.list

  page.auto_paging_each do |unit|
    puts unit
  end
end

# Run examples (uncomment the one you want to try)
# list_pricing_units(client)
