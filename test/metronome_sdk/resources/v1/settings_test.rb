# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::SettingsTest < MetronomeSDK::Test::ResourceTest
  def test_upsert_avalara_credentials_required_params
    response =
      @metronome.v1.settings.upsert_avalara_credentials(
        avalara_environment: :PRODUCTION,
        avalara_password: "my_password_123",
        avalara_username: "test@metronome.com",
        delivery_method_ids: ["9a906ebb-fbc7-42e8-8e29-53bfd2db3aca"]
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsResponse
    end

    assert_pattern do
      response => {
        **_
      }
    end
  end
end
