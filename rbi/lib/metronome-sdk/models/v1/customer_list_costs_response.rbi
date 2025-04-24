# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerListCostsResponse < MetronomeSDK::BaseModel
        sig { returns(T::Hash[Symbol, MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType]) }
        def credit_types
        end

        sig do
          params(_: T::Hash[Symbol, MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType])
            .returns(T::Hash[Symbol, MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType])
        end
        def credit_types=(_)
        end

        sig { returns(Time) }
        def end_timestamp
        end

        sig { params(_: Time).returns(Time) }
        def end_timestamp=(_)
        end

        sig { returns(Time) }
        def start_timestamp
        end

        sig { params(_: Time).returns(Time) }
        def start_timestamp=(_)
        end

        sig do
          params(
            credit_types: T::Hash[Symbol, MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType],
            end_timestamp: Time,
            start_timestamp: Time
          )
            .void
        end
        def initialize(credit_types:, end_timestamp:, start_timestamp:)
        end

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
        def to_hash
        end

        class CreditType < MetronomeSDK::BaseModel
          sig { returns(T.nilable(Float)) }
          def cost
          end

          sig { params(_: Float).returns(Float) }
          def cost=(_)
          end

          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown])
            )
          end
          def line_item_breakdown
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown])
              .returns(T::Array[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown])
          end
          def line_item_breakdown=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig do
            params(
              cost: Float,
              line_item_breakdown: T::Array[MetronomeSDK::Models::V1::CustomerListCostsResponse::CreditType::LineItemBreakdown],
              name: String
            )
              .void
          end
          def initialize(cost: nil, line_item_breakdown: nil, name: nil)
          end

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
          def to_hash
          end

          class LineItemBreakdown < MetronomeSDK::BaseModel
            sig { returns(Float) }
            def cost
            end

            sig { params(_: Float).returns(Float) }
            def cost=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def group_key
            end

            sig { params(_: String).returns(String) }
            def group_key=(_)
            end

            sig { returns(T.nilable(String)) }
            def group_value
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def group_value=(_)
            end

            sig { params(cost: Float, name: String, group_key: String, group_value: T.nilable(String)).void }
            def initialize(cost:, name:, group_key: nil, group_value: nil)
            end

            sig do
              override.returns({cost: Float, name: String, group_key: String, group_value: T.nilable(String)})
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
