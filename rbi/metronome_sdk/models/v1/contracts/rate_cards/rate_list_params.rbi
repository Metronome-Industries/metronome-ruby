# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateListParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Contracts::RateCards::RateListParams,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # inclusive starting point for the rates schedule
            sig { returns(Time) }
            attr_accessor :at

            # ID of the rate card to get the schedule for
            sig { returns(String) }
            attr_accessor :rate_card_id

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

            # List of rate selectors, rates matching ANY of the selector will be included in
            # the response Passing no selectors will result in all rates being returned.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector
                  ]
                )
              )
            end
            attr_reader :selectors

            sig do
              params(
                selectors:
                  T::Array[
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::OrHash
                  ]
              ).void
            end
            attr_writer :selectors

            sig do
              params(
                at: Time,
                rate_card_id: String,
                limit: Integer,
                next_page: String,
                selectors:
                  T::Array[
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::OrHash
                  ],
                request_options: MetronomeSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # inclusive starting point for the rates schedule
              at:,
              # ID of the rate card to get the schedule for
              rate_card_id:,
              # Max number of results that should be returned
              limit: nil,
              # Cursor that indicates where the next page of results should start.
              next_page: nil,
              # List of rate selectors, rates matching ANY of the selector will be included in
              # the response Passing no selectors will result in all rates being returned.
              selectors: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  at: Time,
                  rate_card_id: String,
                  limit: Integer,
                  next_page: String,
                  selectors:
                    T::Array[
                      MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector
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
                  T.any(
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Subscription rates matching the billing frequency will be included in the
              # response.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency::OrSymbol
                  )
                )
              end
              attr_reader :billing_frequency

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency::OrSymbol
                ).void
              end
              attr_writer :billing_frequency

              # List of pricing group key value pairs, rates containing the matching key / value
              # pairs will be included in the response.
              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :partial_pricing_group_values

              sig do
                params(
                  partial_pricing_group_values: T::Hash[Symbol, String]
                ).void
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

              # List of product tags, rates matching any of the tags will be included in the
              # response.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :product_tags

              sig { params(product_tags: T::Array[String]).void }
              attr_writer :product_tags

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency::OrSymbol,
                  partial_pricing_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                # Subscription rates matching the billing frequency will be included in the
                # response.
                billing_frequency: nil,
                # List of pricing group key value pairs, rates containing the matching key / value
                # pairs will be included in the response.
                partial_pricing_group_values: nil,
                # List of pricing group key value pairs, rates matching all of the key / value
                # pairs will be included in the response.
                pricing_group_values: nil,
                # Rates matching the product id will be included in the response.
                product_id: nil,
                # List of product tags, rates matching any of the tags will be included in the
                # response.
                product_tags: nil
              )
              end

              sig do
                override.returns(
                  {
                    billing_frequency:
                      MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency::OrSymbol,
                    partial_pricing_group_values: T::Hash[Symbol, String],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String]
                  }
                )
              end
              def to_hash
              end

              # Subscription rates matching the billing frequency will be included in the
              # response.
              module BillingFrequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end
    end
  end
end
