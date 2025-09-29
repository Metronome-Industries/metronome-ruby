# frozen_string_literal: true

require_relative "../test_helper"

class MetronomeSDK::Test::Resources::NotificationsTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @metronome.notifications.create(
        name: "+1 day after contract starts",
        policy: {offset: "P1D", type: "contract.start"}
      )

    assert_pattern do
      response => MetronomeSDK::Models::NotificationCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::NotificationCreateResponse::Data
      }
    end
  end

  def test_retrieve_required_params
    response = @metronome.notifications.retrieve(id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::NotificationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::NotificationRetrieveResponse::Data
      }
    end
  end

  def test_update_required_params
    response = @metronome.notifications.update(policy: {offset: "P2D", type: "contract.start"})

    assert_pattern do
      response => MetronomeSDK::Models::NotificationUpdateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::NotificationUpdateResponse::Data
      }
    end
  end

  def test_archive_required_params
    response = @metronome.notifications.archive(id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::NotificationArchiveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::NotificationArchiveResponse::Data
      }
    end
  end
end
