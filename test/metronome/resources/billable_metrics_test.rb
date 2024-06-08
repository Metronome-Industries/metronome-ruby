# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::BillableMetricsTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_create_required_params
    response = @metronome.billable_metrics.create({aggregation_type: "sum", name: "CPU Hours"})
    assert_kind_of(Metronome::Models::BillableMetricCreateResponse, response)
  end

  def test_retrieve
    response = @metronome.billable_metrics.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Metronome::Models::BillableMetricRetrieveResponse, response)
  end

  def test_list
    response = @metronome.billable_metrics.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Metronome::Models::BillableMetricListResponse, response)
  end

  def test_archive_required_params
    response = @metronome.billable_metrics.archive({id: "8deed800-1b7a-495d-a207-6c52bac54dc9"})
    assert_kind_of(Metronome::Models::BillableMetricArchiveResponse, response)
  end
end
