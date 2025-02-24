# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::DashboardsTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_get_embeddable_url_required_params
    response = @metronome.dashboards.get_embeddable_url(
      customer_id: "4db51251-61de-4bfe-b9ce-495e244f3491",
      dashboard: :invoices
    )

    assert_pattern do
      response => Metronome::Models::DashboardGetEmbeddableURLResponse
    end

    assert_pattern do
      response => {
        data: Metronome::Models::DashboardGetEmbeddableURLResponse::Data
      }
    end
  end
end
