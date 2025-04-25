# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::AlertsTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @metronome.v1.alerts.create(
        alert_type: :spend_threshold_reached,
        name: "$100 spend threshold reached",
        threshold: 10_000
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::AlertCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end

  def test_archive_required_params
    response = @metronome.v1.alerts.archive(id: "8deed800-1b7a-495d-a207-6c52bac54dc9")

    assert_pattern do
      response => MetronomeSDK::Models::V1::AlertArchiveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end
end
