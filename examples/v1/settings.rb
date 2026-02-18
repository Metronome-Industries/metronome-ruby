# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example Upsert Avalara credentials
def upsert_avalara_credentials(client)
  response = client.v1.settings.upsert_avalara_credentials(
    avalara_environment: "production",
    avalara_password: "your-avalara-password",
    avalara_username: "your-avalara-username",
    delivery_method_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
  )
  puts response.data
end

# Run examples (uncomment the one you want to try)
# upsert_avalara_credentials(client)
