# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::DashboardsTest < Minitest::Test
  parallelize_me!

  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_get_embeddable_url_required_params
    response = @metronome.dashboards.get_embeddable_url(
      {customer_id: "4db51251-61de-4bfe-b9ce-495e244f3491", dashboard: "invoices"}
    )
    assert_kind_of(Metronome::Models::DashboardGetEmbeddableURLResponse, response)
  end
end
