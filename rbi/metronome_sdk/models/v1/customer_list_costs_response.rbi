# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerListCostsResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(T::Hash[Symbol, MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType]) }
        attr_accessor :credit_types

        sig { returns(Time) }
        attr_accessor :end_timestamp

        sig { returns(Time) }
        attr_accessor :start_timestamp

        sig do
          params(
            credit_types: T::Hash[
              Symbol,
              T.any(MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType, MetronomeSDK::Internal::AnyHash)
            ],
            end_timestamp: Time,
            start_timestamp: Time
          )
            .returns(T.attached_class)
        end
        def self.new(credit_types:, end_timestamp:, start_timestamp:); end

        sig do
          override
            .returns(
              {
                credit_types: T::Hash[Symbol, MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType],
                end_timestamp: Time,
                start_timestamp: Time
              }
            )
        end
        def to_hash; end

        class CreditType < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(T.nilable(Float)) }
          attr_reader :cost

          sig { params(cost: Float).void }
          attr_writer :cost

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown])
            )
          end
          attr_reader :line_item_breakdown

          sig do
            params(
              line_item_breakdown: T::Array[
                T.any(
                  MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .void
          end
          attr_writer :line_item_breakdown

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              cost: Float,
              line_item_breakdown: T::Array[
                T.any(
                  MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown,
                  MetronomeSDK::Internal::AnyHash
                )
              ],
              name: String
            )
              .returns(T.attached_class)
          end
          def self.new(cost: nil, line_item_breakdown: nil, name: nil); end

          sig do
            override
              .returns(
                {
                  cost: Float,
                  line_item_breakdown: T::Array[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown],
                  name: String
                }
              )
          end
          def to_hash; end

          class LineItemBreakdown < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(Float) }
            attr_accessor :cost

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_reader :group_key

            sig { params(group_key: String).void }
            attr_writer :group_key

            sig { returns(T.nilable(String)) }
            attr_accessor :group_value

            sig do
              params(cost: Float, name: String, group_key: String, group_value: T.nilable(String))
                .returns(T.attached_class)
            end
            def self.new(cost:, name:, group_key: nil, group_value: nil); end

            sig do
              override.returns({cost: Float, name: String, group_key: String, group_value: T.nilable(String)})
            end
            def to_hash; end
          end
        end
      end
    end
  end
end
