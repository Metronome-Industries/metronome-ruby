# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::AuditLogsTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @metronome.audit_logs.list

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => Metronome::Models::AuditLogListResponse
    end

    assert_pattern do
      row => {
        id: String,
        request: Metronome::Models::AuditLogListResponse::Request,
        timestamp: Time,
        action: String | nil,
        actor: Metronome::Models::AuditLogListResponse::Actor | nil,
        description: String | nil,
        resource_id: String | nil,
        resource_type: String | nil,
        status: Metronome::Models::AuditLogListResponse::Status | nil
      }
    end
  end
end
