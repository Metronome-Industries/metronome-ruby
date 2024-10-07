# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::BillableMetricsTest < Minitest::Test
  parallelize_me!

  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_create_required_params
    response = @metronome.billable_metrics.create({aggregation_type: "COUNT", name: "CPU Hours"})
    assert_kind_of(Metronome::Models::BillableMetricCreateResponse, response)
  end

  def test_retrieve_required_params
    response = @metronome.billable_metrics.retrieve({billable_metric_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"})
    assert_kind_of(Metronome::Models::BillableMetricRetrieveResponse, response)
  end

  def test_list
    response = @metronome.billable_metrics.list
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_archive_required_params
    response = @metronome.billable_metrics.archive({id: "8deed800-1b7a-495d-a207-6c52bac54dc9"})
    assert_kind_of(Metronome::Models::BillableMetricArchiveResponse, response)
  end
end
