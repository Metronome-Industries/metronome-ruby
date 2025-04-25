# frozen_string_literal: true

require_relative "../../../test_helper"

class MetronomeSDK::Test::Resources::V1::Customers::CommitsTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response =
      @metronome.v1.customers.commits.create(
        access_schedule: {
          schedule_items: [
            {
              amount: 1000,
              ending_before: "2020-02-01T00:00:00.000Z",
              starting_at: "2020-01-01T00:00:00.000Z"
            }
          ]
        },
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d",
        priority: 100,
        product_id: "f14d6729-6a44-4b13-9908-9387f1918790",
        type: :PREPAID
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::CommitCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end

  def test_list_required_params
    response = @metronome.v1.customers.commits.list(customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d")

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::CommitListResponse
    end

    assert_pattern do
      response => {
        data: ^(MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::Commit]),
        next_page: String | nil
      }
    end
  end

  def test_update_end_date_required_params
    response =
      @metronome.v1.customers.commits.update_end_date(
        commit_id: "6162d87b-e5db-4a33-b7f2-76ce6ead4e85",
        customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d"
      )

    assert_pattern do
      response => MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::Models::ID
      }
    end
  end
end
