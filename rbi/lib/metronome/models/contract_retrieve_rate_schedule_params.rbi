# typed: strong

module Metronome
  module Models
    class ContractRetrieveRateScheduleParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            contract_id: String,
            customer_id: String,
            limit: Integer,
            next_page: String,
            at: Time,
            selectors: T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector]
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :contract_id

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig { returns(T.nilable(Time)) }
      attr_reader :at

      sig { params(at: Time).void }
      attr_writer :at

      sig { returns(T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector]) }
      attr_reader :selectors

      sig do
        params(selectors: T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector]).void
      end
      attr_writer :selectors

      sig do
        params(
          contract_id: String,
          customer_id: String,
          limit: Integer,
          next_page: String,
          at: Time,
          selectors: T::Array[Metronome::Models::ContractRetrieveRateScheduleParams::Selector],
          request_options: Metronome::RequestOpts
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

      sig { returns(Metronome::Models::ContractRetrieveRateScheduleParams::Shape) }
      def to_h; end

      class Selector < Metronome::BaseModel
        Shape = T.type_alias do
          {
            partial_pricing_group_values: T::Hash[Symbol, String],
            pricing_group_values: T::Hash[Symbol, String],
            product_id: String,
            product_tags: T::Array[String]
          }
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :partial_pricing_group_values

        sig { params(partial_pricing_group_values: T::Hash[Symbol, String]).void }
        attr_writer :partial_pricing_group_values

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :pricing_group_values

        sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
        attr_writer :pricing_group_values

        sig { returns(T.nilable(String)) }
        attr_reader :product_id

        sig { params(product_id: String).void }
        attr_writer :product_id

        sig { returns(T::Array[String]) }
        attr_reader :product_tags

        sig { params(product_tags: T::Array[String]).void }
        attr_writer :product_tags

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

        sig { returns(Metronome::Models::ContractRetrieveRateScheduleParams::Selector::Shape) }
        def to_h; end
      end
    end
  end
end
