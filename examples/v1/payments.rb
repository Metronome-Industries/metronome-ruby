# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example List payments for a customer invoice
def list_payments(client)
  page = client.v1.payments.list(
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    invoice_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
  )

  page.auto_paging_each do |payment|
    puts payment
  end
end

# @example Attempt a payment for a customer invoice
def attempt_payment(client)
  response = client.v1.payments.attempt(
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    invoice_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
  )
  puts response.data
end

# @example Cancel a payment for a customer invoice
def cancel_payment(client)
  response = client.v1.payments.cancel(
    customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
    invoice_id: "6a37bb88-8538-48c5-b37b-a41c836328bd"
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# list_payments(client)
# attempt_payment(client)
# cancel_payment(client)
