# typed: strong

module Metronome
  module Models
    class ContractListBalancesParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def covering_date
      end

      sig { params(_: Time).returns(Time) }
      def covering_date=(_)
      end

      sig { returns(T.nilable(Time)) }
      def effective_before
      end

      sig { params(_: Time).returns(Time) }
      def effective_before=(_)
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
      def include_contract_balances
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_contract_balances=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def include_ledgers
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_ledgers=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_page
      end

      sig { params(_: String).returns(String) }
      def next_page=(_)
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
          id: String,
          covering_date: Time,
          effective_before: Time,
          include_archived: T::Boolean,
          include_balance: T::Boolean,
          include_contract_balances: T::Boolean,
          include_ledgers: T::Boolean,
          next_page: String,
          starting_at: Time,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        customer_id:,
        id: nil,
        covering_date: nil,
        effective_before: nil,
        include_archived: nil,
        include_balance: nil,
        include_contract_balances: nil,
        include_ledgers: nil,
        next_page: nil,
        starting_at: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              customer_id: String,
              id: String,
              covering_date: Time,
              effective_before: Time,
              include_archived: T::Boolean,
              include_balance: T::Boolean,
              include_contract_balances: T::Boolean,
              include_ledgers: T::Boolean,
              next_page: String,
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
