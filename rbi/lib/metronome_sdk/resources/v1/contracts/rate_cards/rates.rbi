# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          class Rates
            # Get all rates for a rate card at a point in time
            sig do
              params(
                at: Time,
                rate_card_id: String,
                limit: Integer,
                next_page: String,
                selectors: T::Array[
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams::Selector,
                    MetronomeSDK::Internal::AnyHash
                  )
                ],
                request_options: T.nilable(
                  T.any(
                    MetronomeSDK::RequestOptions,
                    MetronomeSDK::Internal::AnyHash
                  )
                )
              )
                .returns(
                  MetronomeSDK::Internal::CursorPage[MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse]
                )
            end
            def list(
              # Body param: inclusive starting point for the rates schedule
              at:,
              # Body param: ID of the rate card to get the schedule for
              rate_card_id:,
              # Query param: Max number of results that should be returned
              limit: nil,
              # Query param: Cursor that indicates where the next page of results should start.
              next_page: nil,
              # Body param: List of rate selectors, rates matching ANY of the selector will be
              # included in the response Passing no selectors will result in all rates being
              # returned.
              selectors: nil,
              request_options: {}
            ); end
            # Add a new rate
            sig do
              params(
                entitled: T::Boolean,
                product_id: String,
                rate_card_id: String,
                rate_type: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams::RateType::OrSymbol,
                starting_at: Time,
                commit_rate: T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams::CommitRate,
                  MetronomeSDK::Internal::AnyHash
                ),
                credit_type_id: String,
                custom_rate: T::Hash[Symbol, T.anything],
                ending_before: Time,
                is_prorated: T::Boolean,
                price: Float,
                pricing_group_values: T::Hash[Symbol, String],
                quantity: Float,
                tiers: T::Array[T.any(MetronomeSDK::Models::Tier, MetronomeSDK::Internal::AnyHash)],
                use_list_prices: T::Boolean,
                request_options: T.nilable(
                  T.any(
                    MetronomeSDK::RequestOptions,
                    MetronomeSDK::Internal::AnyHash
                  )
                )
              )
                .returns(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse)
            end
            def add(
              entitled:,
              # ID of the product to add a rate for
              product_id:,
              # ID of the rate card to update
              rate_card_id:,
              rate_type:,
              # inclusive effective date
              starting_at:,
              # A distinct rate on the rate card. You can choose to use this rate rather than
              # list rate when consuming a credit or commit.
              commit_rate: nil,
              # The Metronome ID of the credit type to associate with price, defaults to USD
              # (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE
              # rates use the credit type of associated rates.
              credit_type_id: nil,
              # Only set for CUSTOM rate_type. This field is interpreted by custom rate
              # processors.
              custom_rate: nil,
              # exclusive end date
              ending_before: nil,
              # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              # set to true.
              is_prorated: nil,
              # Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For
              # PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this
              # must be >=0 and <=1.
              price: nil,
              # Optional. List of pricing group key value pairs which will be used to calculate
              # the price.
              pricing_group_values: nil,
              # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              quantity: nil,
              # Only set for TIERED rate_type.
              tiers: nil,
              # Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
              # using list prices rather than the standard rates for this product on the
              # contract.
              use_list_prices: nil,
              request_options: {}
            ); end
            # Add new rates
            sig do
              params(
                rate_card_id: String,
                rates: T::Array[
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate,
                    MetronomeSDK::Internal::AnyHash
                  )
                ],
                request_options: T.nilable(
                  T.any(
                    MetronomeSDK::RequestOptions,
                    MetronomeSDK::Internal::AnyHash
                  )
                )
              )
                .returns(MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse)
            end
            def add_many(rate_card_id:, rates:, request_options: {}); end

            # @api private
            sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
            def self.new(client:); end
          end
        end
      end
    end
  end
end
