# typed: strong

module Metronome
  module Models
    class CustomerListCostsResponse < Metronome::BaseModel
      sig { returns(T::Hash[Symbol, Metronome::Models::CustomerListCostsResponse::CreditType]) }
      attr_accessor :credit_types

      sig { returns(Time) }
      attr_accessor :end_timestamp

      sig { returns(Time) }
      attr_accessor :start_timestamp

      sig do
        params(
          credit_types: T::Hash[Symbol, Metronome::Models::CustomerListCostsResponse::CreditType],
          end_timestamp: Time,
          start_timestamp: Time
        ).void
      end
      def initialize(credit_types:, end_timestamp:, start_timestamp:)
      end

      sig do
        override.returns(
          {
            credit_types: T::Hash[Symbol, Metronome::Models::CustomerListCostsResponse::CreditType],
            end_timestamp: Time,
            start_timestamp: Time
          }
        )
      end
      def to_hash
      end

      class CreditType < Metronome::BaseModel
        sig { returns(T.nilable(Float)) }
        attr_reader :cost

        sig { params(cost: Float).void }
        attr_writer :cost

        sig do
          returns(T.nilable(T::Array[Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown]))
        end
        attr_reader :line_item_breakdown

        sig do
          params(
            line_item_breakdown: T::Array[Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown]
          ).void
        end
        attr_writer :line_item_breakdown

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            cost: Float,
            line_item_breakdown: T::Array[Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown],
            name: String
          ).void
        end
        def initialize(cost: nil, line_item_breakdown: nil, name: nil)
        end

        sig do
          override.returns(
            {
              cost: Float,
              line_item_breakdown: T::Array[Metronome::Models::CustomerListCostsResponse::CreditType::LineItemBreakdown],
              name: String
            }
          )
        end
        def to_hash
        end

        class LineItemBreakdown < Metronome::BaseModel
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
