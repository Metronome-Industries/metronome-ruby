# frozen_string_literal: true

require "metronome_sdk"

client = MetronomeSDK::Client.new

# @example List audit logs
def list_audit_logs(client)
  page = client.v1.audit_logs.list

  page.auto_paging_each do |entry|
    puts entry
  end
end

# Run examples (uncomment the one you want to try)
# list_audit_logs(client)
