# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::ServicesTest < MetronomeSDK::Test::ResourceTest
  def test_list
    response = @metronome.v1.services.list

    assert_pattern do
      response => MetronomeSDK::Models::V1::ServiceListResponse
    end

    assert_pattern do
      response => {
        services: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ServiceListResponse::Service])
      }
    end
  end
end
