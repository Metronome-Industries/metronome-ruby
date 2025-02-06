# typed: strong

module Metronome
  module Models
    class ContractListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T.nilable(Time)) }
      attr_reader :covering_date

      sig { params(covering_date: Time).void }
      attr_writer :covering_date

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_archived

      sig { params(include_archived: T::Boolean).void }
      attr_writer :include_archived

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_balance

      sig { params(include_balance: T::Boolean).void }
      attr_writer :include_balance

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_ledgers

      sig { params(include_ledgers: T::Boolean).void }
      attr_writer :include_ledgers

      sig { returns(T.nilable(Time)) }
      attr_reader :starting_at

      sig { params(starting_at: Time).void }
      attr_writer :starting_at

      sig do
        params(
          customer_id: String,
          covering_date: Time,
          include_archived: T::Boolean,
          include_balance: T::Boolean,
          include_ledgers: T::Boolean,
          starting_at: Time,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        customer_id:,
        covering_date: nil,
        include_archived: nil,
        include_balance: nil,
        include_ledgers: nil,
        starting_at: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            customer_id: String,
            covering_date: Time,
            include_archived: T::Boolean,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            starting_at: Time,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
