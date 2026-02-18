# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Create a billing provider configuration
def create_billing_provider(client)
  response = client.v1.settings.billing_providers.create(
    billing_provider: :stripe,
    configuration: {"api_key" => "sk_test_..."},
    delivery_method: :direct_to_billing_provider
  )
  puts response.data
end

# @example List billing provider configurations
def list_billing_providers(client)
  response = client.v1.settings.billing_providers.list
  puts response.data
end

# Run examples (uncomment the one you want to try)
# create_billing_provider(client)
# list_billing_providers(client)
