# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V2::NotificationsTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @metronome.v2.notifications.create(
        name: "+1 day after contract starts",
        policy: {offset: "P1D", type: "contract.start"}
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::NotificationCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig
      }
    end
  end

  def test_retrieve_required_params
    response = @metronome.v2.notifications.retrieve(id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::V2::NotificationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig
      }
    end
  end

  def test_archive_required_params
    response = @metronome.v2.notifications.archive(id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::V2::NotificationArchiveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig
      }
    end
  end

  def test_edit_required_params
    response =
      @metronome.v2.notifications.edit(
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        policy: {offset: "P1D", type: "type"},
        type: :OFFSET_LIFECYCLE_EVENT
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::NotificationEditResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V2::NotificationEditResponse::Data
      }
    end
  end

  def test_list_offset
    response = @metronome.v2.notifications.list_offset

    assert_pattern do
      response => MetronomeSDK::Models::V2::NotificationListOffsetResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig]),
        cursor: String | nil
      }
    end
  end

  def test_list_system
    response = @metronome.v2.notifications.list_system

    assert_pattern do
      response => MetronomeSDK::Models::V2::NotificationListSystemResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::LifecycleEventSystemNotificationConfig]),
        cursor: String | nil
      }
    end
  end
end
