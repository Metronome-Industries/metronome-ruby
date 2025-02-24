# typed: strong

module Metronome
  module Models
    class ContractRetrieveRateScheduleParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def contract_id
      end

      sig { params(_: String).returns(String) }
      def contract_id=(_)
      end

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_page
      end

      sig { params(_: String).returns(String) }
      def next_page=(_)
      end

      sig { returns(T.nilable(Time)) }
      def at
      end

      sig { params(_: Time).returns(Time) }
      def at=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector])) }
      def selectors
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector]).returns(T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector])
      end
      def selectors=(_)
      end

      sig do
        params(
          contract_id: String,
          customer_id: String,
          limit: Integer,
          next_page: String,
          at: Time,
          selectors: T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector],
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        contract_id:,
        customer_id:,
        limit: nil,
        next_page: nil,
        at: nil,
        selectors: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            contract_id: String,
            customer_id: String,
            limit: Integer,
            next_page: String,
            at: Time,
            selectors: T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector],
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Selector < Metronome::BaseModel
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def partial_pricing_group_values
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def partial_pricing_group_values=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def pricing_group_values
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def pricing_group_values=(_)
        end

        sig { returns(T.nilable(String)) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def product_tags
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def product_tags=(_)
        end

        sig do
          params(
            partial_pricing_group_values: T::Hash[Symbol, String],
            pricing_group_values: T::Hash[Symbol, String],
            product_id: String,
            product_tags: T::Array[String]
          ).void
        end
        def initialize(
          partial_pricing_group_values: nil,
          pricing_group_values: nil,
          product_id: nil,
          product_tags: nil
        )
        end

        sig do
          override.returns(
            {
              partial_pricing_group_values: T::Hash[Symbol, String],
              pricing_group_values: T::Hash[Symbol, String],
              product_id: String,
              product_tags: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
