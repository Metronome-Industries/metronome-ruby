# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Regenerate an invoice
def regenerate_invoice(client)
  response = client.v1.invoices.regenerate(
    id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
  )
  puts response.data
end

# @example Void an invoice
def void_invoice(client)
  response = client.v1.invoices.void(
    id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# regenerate_invoice(client)
# void_invoice(client)
