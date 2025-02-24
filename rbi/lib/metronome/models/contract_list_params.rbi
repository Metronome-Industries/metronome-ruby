# typed: strong

module Metronome
  module Models
    class ContractListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def covering_date
      end

      sig { params(_: Time).returns(Time) }
      def covering_date=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def include_archived
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_archived=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def include_balance
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_balance=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def include_ledgers
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_ledgers=(_)
      end

      sig { returns(T.nilable(Time)) }
      def starting_at
      end

      sig { params(_: Time).returns(Time) }
      def starting_at=(_)
      end

      sig do
        params(
          customer_id: String,
          covering_date: Time,
          include_archived: T::Boolean,
          include_balance: T::Boolean,
          include_ledgers: T::Boolean,
          starting_at: Time,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        customer_id:,
        covering_date: nil,
        include_archived: nil,
        include_balance: nil,
        include_ledgers: nil,
        starting_at: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
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
      def to_hash
      end
    end
  end
end
