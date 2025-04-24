# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Contracts::ProductsTest < Minitest::Test
  def before_all
    @metronome = MetronomeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @metronome.v1.contracts.products.create(name: "My Product", type: :FIXED)

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::ProductCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end

  def test_retrieve_required_params
    response = @metronome.v1.contracts.products.retrieve(id: "d84e7f4e-7a70-4fe4-be02-7a5027beffcc")

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::ProductRetrieveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::V1::Contracts::ProductRetrieveResponse::Data
      }
    end
  end

  def test_update_required_params
    response = @metronome.v1.contracts.products.update(
      product_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc",
      starting_at: "2020-01-01T00:00:00.000Z"
    )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::ProductUpdateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end

  def test_list
    response = @metronome.v1.contracts.products.list

    assert_pattern do
      response => MetronomeSDK::CursorPage
    end

    page = response.next_page
    assert_pattern do
      page => MetronomeSDK::CursorPage
    end

    row = response.to_enum.first
    assert_pattern do
      row => MetronomeSDK::Models::V1::Contracts::ProductListResponse
    end

    assert_pattern do
      row => {
        id: String,
        current: MetronomeSDK::Models::V1::Contracts::ProductListItemState,
        initial: MetronomeSDK::Models::V1::Contracts::ProductListItemState,
        type: MetronomeSDK::Models::V1::Contracts::ProductListResponse::Type,
        updates: ^(MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Contracts::ProductListResponse::Update]),
        archived_at: Time | nil,
        custom_fields: ^(MetronomeSDK::HashOf[String]) | nil
      }
    end
  end

  def test_archive_required_params
    response = @metronome.v1.contracts.products.archive(product_id: "d7abd0cd-4ae9-4db7-8676-e986a4ebd8dc")

    assert_pattern do
      response => MetronomeSDK::Models::V1::Contracts::ProductArchiveResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end
end
