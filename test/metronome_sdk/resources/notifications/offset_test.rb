# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::Notifications::OffsetTest < MetronomeSDK::Test::ResourceTest
  def test_list
    response = @metronome.notifications.offset.list

    assert_pattern do
      response => MetronomeSDK::Models::Notifications::OffsetListResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::Notifications::OffsetListResponse::Data]),
        cursor: String | nil
      }
    end
  end
end
