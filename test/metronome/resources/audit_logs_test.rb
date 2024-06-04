# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::AuditLogsTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_list
    response = @metronome.audit_logs.list 
    assert_kind_of(Metronome::Models::AuditLogListResponse, response)
  end
end
