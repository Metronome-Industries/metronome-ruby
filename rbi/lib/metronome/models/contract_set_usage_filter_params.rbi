# typed: strong

module Metronome
  module Models
    class ContractSetUsageFilterParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :contract_id

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(String) }
      attr_accessor :group_key

      sig { returns(T::Array[String]) }
      attr_accessor :group_values

      sig { returns(Time) }
      attr_accessor :starting_at

      sig do
        params(
          contract_id: String,
          customer_id: String,
          group_key: String,
          group_values: T::Array[String],
          starting_at: Time,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(contract_id:, customer_id:, group_key:, group_values:, starting_at:, request_options: {})
      end

      sig do
        override.returns(
          {
            contract_id: String,
            customer_id: String,
            group_key: String,
            group_values: T::Array[String],
            starting_at: Time,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
