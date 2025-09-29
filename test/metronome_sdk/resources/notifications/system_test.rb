# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::Notifications::SystemTest < MetronomeSDK::Test::ResourceTest
  def test_list
    response = @metronome.notifications.system_.list

    assert_pattern do
      response => MetronomeSDK::Models::Notifications::SystemListResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::Notifications::SystemListResponse::Data]),
        cursor: String | nil
      }
    end
  end
end
