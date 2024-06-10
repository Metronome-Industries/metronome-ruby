# frozen_string_literal: true

require_relative "../test_helper"

class Metronome::Test::Resources::CustomersTest < Test::Unit::TestCase
  def setup
    @metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
  end

  def test_create_required_params
    response = @metronome.customers.create({name: "Example, Inc."})
    assert_kind_of(Metronome::Models::CustomerCreateResponse, response)
  end

  def test_retrieve
    response = @metronome.customers.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Metronome::Models::CustomerRetrieveResponse, response)
  end

  def test_list
    response = @metronome.customers.list 
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_archive_required_params
    response = @metronome.customers.archive({id: "8deed800-1b7a-495d-a207-6c52bac54dc9"})
    assert_kind_of(Metronome::Models::CustomerArchiveResponse, response)
  end

  def test_list_billable_metrics
    response = @metronome.customers.list_billable_metrics("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_list_costs_required_params
    response = @metronome.customers.list_costs(
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      {ending_before: "2019-12-27T18:11:19.117Z", starting_on: "2019-12-27T18:11:19.117Z"}
    )
    assert_kind_of(Metronome::CursorPage, response)
  end

  def test_set_ingest_aliases_required_params
    response = @metronome.customers.set_ingest_aliases(
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      {ingest_aliases: ["team@example.com"]}
    )
    assert_nil(response)
  end

  def test_set_name_required_params
    response = @metronome.customers.set_name("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", {name: "Example, Inc."})
    assert_kind_of(Metronome::Models::CustomerSetNameResponse, response)
  end

  def test_update_config
    response = @metronome.customers.update_config("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
    assert_nil(response)
  end
end
