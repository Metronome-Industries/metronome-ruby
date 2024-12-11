# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::CustomersTest < Minitest::Test
  parallelize_me!

  def setup
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.customers.create(name: "Example, Inc.")
    assert_kind_of(Metronome::Models::CustomerCreateResponse, response)
  end

  def test_retrieve_required_params
    response = @metronome.customers.retrieve(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")
    assert_kind_of(Metronome::Models::CustomerRetrieveResponse, response)
  end

  def test_list
    response = @metronome.customers.list
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_archive_required_params
    response = @metronome.customers.archive(id: "8deed800-1b7a-495d-a207-6c52bac54dc9")
    assert_kind_of(Metronome::Models::CustomerArchiveResponse, response)
  end

  def test_list_billable_metrics_required_params
    response = @metronome.customers.list_billable_metrics(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_list_costs_required_params
    response = @metronome.customers.list_costs(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      ending_before: "2019-12-27T18:11:19.117Z",
      starting_on: "2019-12-27T18:11:19.117Z"
    )
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_set_ingest_aliases_required_params
    response = @metronome.customers.set_ingest_aliases(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      ingest_aliases: ["team@example.com"]
    )
    assert_nil(response)
  end

  def test_set_name_required_params
    response = @metronome.customers.set_name(
      customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      name: "Example, Inc."
    )
    assert_kind_of(Metronome::Models::CustomerSetNameResponse, response)
  end

  def test_update_config_required_params
    response = @metronome.customers.update_config(customer_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")
    assert_nil(response)
  end
end
