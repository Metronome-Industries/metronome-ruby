# frozen_string_literal: true

require_relative "../../test_helper"

class Metronome::Test::Resources::Contracts::ProductsTest < Minitest::Test
  def before_all
    @metronome = Metronome::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.contracts.products.create(name: "My Product", type: :FIXED)

    assert_pattern do
      response => Metronome::Models::Contracts::ProductCreateResponse
    end
  end

  def test_retrieve_required_params
    response = @metronome.contracts.products.retrieve(id: "d84e7f4e-7a70-4fe4-be02-7a5027beffcc")

    assert_pattern do
      response => Metronome::Models::Contracts::ProductRetrieveResponse
    end
  end

  def test_update_required_params
    response = @metronome.contracts.products.update(
      product_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      starting_at: "2020-01-01T00:00:00.000Z"
    )

    assert_pattern do
      response => Metronome::Models::Contracts::ProductUpdateResponse
    end
  end

  def test_list
    response = @metronome.contracts.products.list

    assert_pattern do
      response => Metronome::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => Metronome::CursorPage
    end
  end

  def test_archive_required_params
    response = @metronome.contracts.products.archive(product_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => Metronome::Models::Contracts::ProductArchiveResponse
    end
  end
end
