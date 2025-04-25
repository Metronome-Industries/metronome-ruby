# frozen_string_literal: true

require_relative "../../test_helper"

class MetronomeSDK::Test::Resources::V1::DashboardsTest < MetronomeSDK::Test::ResourceTest
  def test_get_embeddable_url_required_params
    response =
      @metronome.v1.dashboards.get_embeddable_url(
        customer_id: "4db51251-61de-4bfe-b9ce-495e244f3491",
        dashboard: :invoices
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data
      }
    end
  end
end
