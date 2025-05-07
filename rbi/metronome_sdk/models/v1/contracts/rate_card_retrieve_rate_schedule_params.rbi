# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class RateCardRetrieveRateScheduleParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          # ID of the rate card to get the schedule for
          sig { returns(String) }
          attr_accessor :rate_card_id

          # inclusive starting point for the rates schedule
          sig { returns(Time) }
          attr_accessor :starting_at

          # Max number of results that should be returned
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Cursor that indicates where the next page of results should start.
          sig { returns(T.nilable(String)) }
          attr_reader :next_page

          sig { params(next_page: String).void }
          attr_writer :next_page

          # optional exclusive end date for the rates schedule. When not specified rates
          # will show all future schedule segments.
          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          # List of rate selectors, rates matching ANY of the selector will be included in
          # the response Passing no selectors will result in all rates being returned.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector
                ]
              )
            )
          end
          attr_reader :selectors

          sig do
            params(
              selectors:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector::OrHash
                ]
            ).void
          end
          attr_writer :selectors

          sig do
            params(
              rate_card_id: String,
              starting_at: Time,
              limit: Integer,
              next_page: String,
              ending_before: Time,
              selectors:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector::OrHash
                ],
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the rate card to get the schedule for
            rate_card_id:,
            # inclusive starting point for the rates schedule
            starting_at:,
            # Max number of results that should be returned
            limit: nil,
            # Cursor that indicates where the next page of results should start.
            next_page: nil,
            # optional exclusive end date for the rates schedule. When not specified rates
            # will show all future schedule segments.
            ending_before: nil,
            # List of rate selectors, rates matching ANY of the selector will be included in
            # the response Passing no selectors will result in all rates being returned.
            selectors: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                rate_card_id: String,
                starting_at: Time,
                limit: Integer,
                next_page: String,
                ending_before: Time,
                selectors:
                  T::Array[
                    MetronomeSDK::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector
                  ],
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Selector < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
              end

            # List of pricing group key value pairs, rates containing the matching key / value
            # pairs will be included in the response.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :partial_pricing_group_values

            sig do
              params(partial_pricing_group_values: T::Hash[Symbol, String]).void
            end
            attr_writer :partial_pricing_group_values

            # List of pricing group key value pairs, rates matching all of the key / value
            # pairs will be included in the response.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :pricing_group_values

            sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :pricing_group_values

            # Rates matching the product id will be included in the response.
            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            sig do
              params(
                partial_pricing_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # List of pricing group key value pairs, rates containing the matching key / value
              # pairs will be included in the response.
              partial_pricing_group_values: nil,
              # List of pricing group key value pairs, rates matching all of the key / value
              # pairs will be included in the response.
              pricing_group_values: nil,
              # Rates matching the product id will be included in the response.
              product_id: nil
            )
            end

            sig do
              override.returns(
                {
                  partial_pricing_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
