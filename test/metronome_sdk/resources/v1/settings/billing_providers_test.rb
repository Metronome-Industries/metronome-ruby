# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Settings::BillingProvidersTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @metronome.v1.settings.billing_providers.create(
        billing_provider: :aws_marketplace,
        configuration: {aws_external_id: "bar", aws_iam_role_arn: "bar"},
        delivery_method: :direct_to_billing_provider
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse::Data
      }
    end
  end

  def test_list
    response = @metronome.v1.settings.billing_providers.list

    assert_pattern do
      response => MetronomeSDK::Models::V1::Settings::BillingProviderListResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data]),
        next_page: String | nil
      }
    end
  end
end
