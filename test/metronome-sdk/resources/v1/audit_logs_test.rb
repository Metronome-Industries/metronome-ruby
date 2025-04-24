# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::AuditLogsTest < Minitest::Test
  def before_all
    @metronome = MetronomeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @metronome.v1.audit_logs.list

    assert_pattern do
      response => MetronomeSDK::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => MetronomeSDK::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => MetronomeSDK::Models::V1::AuditLogListResponse
    end

    assert_pattern do
      row => {
        id: String,
        request: MetronomeSDK::Models::V1::AuditLogListResponse::Request,
        timestamp: Time,
        action: String | nil,
        actor: MetronomeSDK::Models::V1::AuditLogListResponse::Actor | nil,
        description: String | nil,
        resource_id: String | nil,
        resource_type: String | nil,
        status: MetronomeSDK::Models::V1::AuditLogListResponse::Status | nil
      }
    end
  end
end
