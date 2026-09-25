# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V2::Notifications::OffsetTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @metronome.v2.notifications.offset.create(
        name: "+1 day after contract starts",
        policy: {offset: "P1D", type: "contract.start"}
      )

    assert_pattern do
      response => MetronomeSDK::Models::V2::Notifications::OffsetCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig
      }
    end
  end

  def test_retrieve_required_params
    response = @metronome.v2.notifications.offset.retrieve(id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::V2::Notifications::OffsetRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig
      }
    end
  end

  def test_list
    response = @metronome.v2.notifications.offset.list

    assert_pattern do
      response => MetronomeSDK::Internal::BodyCursorPageCursorField
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig
    end

    assert_pattern do
      row => {
        id: String,
        archived_at: Time | nil,
        created_at: Time,
        created_by: String,
        environment_type: String,
        name: String,
        policy: MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::Policy,
        type: String
      }
    end
  end

  def test_archive_required_params
    response = @metronome.v2.notifications.offset.archive(id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::V2::Notifications::OffsetArchiveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig
      }
    end
  end

  def test_edit_required_params
    response = @metronome.v2.notifications.offset.edit(policy: {offset: "P2D", type: "contract.start"})

    assert_pattern do
      response => MetronomeSDK::Models::V2::Notifications::OffsetEditResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V2::Notifications::OffsetEditResponse::Data
      }
    end
  end
end
