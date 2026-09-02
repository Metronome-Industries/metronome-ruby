# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V2::Notifications::SystemTest < MetronomeSDK::Test::ResourceTest
  def test_list
    response = @metronome.v2.notifications.system_.list

    assert_pattern do
      response => MetronomeSDK::Models::V2::Notifications::SystemListResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::LifecycleEventSystemNotificationConfig]),
        cursor: String | nil
      }
    end
  end
end
