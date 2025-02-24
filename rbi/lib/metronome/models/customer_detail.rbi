# typed: strong

module Metronome
  module Models
    class CustomerDetail < Metronome::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def custom_fields
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_fields=(_)
      end

      sig { returns(Metronome::Models::CustomerDetail::CustomerConfig) }
      def customer_config
      end

      sig do
        params(_: Metronome::Models::CustomerDetail::CustomerConfig)
          .returns(Metronome::Models::CustomerDetail::CustomerConfig)
      end
      def customer_config=(_)
      end

      sig { returns(String) }
      def external_id
      end

      sig { params(_: String).returns(String) }
      def external_id=(_)
      end

      sig { returns(T::Array[String]) }
      def ingest_aliases
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def ingest_aliases=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(Time)) }
      def archived_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def archived_at=(_)
      end

      sig { returns(T.nilable(Metronome::Models::CustomerDetail::CurrentBillableStatus)) }
      def current_billable_status
      end

      sig do
        params(_: Metronome::Models::CustomerDetail::CurrentBillableStatus)
          .returns(Metronome::Models::CustomerDetail::CurrentBillableStatus)
      end
      def current_billable_status=(_)
      end

      sig do
        params(
          id: String,
          custom_fields: T::Hash[Symbol, String],
          customer_config: Metronome::Models::CustomerDetail::CustomerConfig,
          external_id: String,
          ingest_aliases: T::Array[String],
          name: String,
          archived_at: T.nilable(Time),
          current_billable_status: Metronome::Models::CustomerDetail::CurrentBillableStatus
        )
          .void
      end
      def initialize(
        id:,
        custom_fields:,
        customer_config:,
        external_id:,
        ingest_aliases:,
        name:,
        archived_at: nil,
        current_billable_status: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              custom_fields: T::Hash[Symbol, String],
              customer_config: Metronome::Models::CustomerDetail::CustomerConfig,
              external_id: String,
              ingest_aliases: T::Array[String],
              name: String,
              archived_at: T.nilable(Time),
              current_billable_status: Metronome::Models::CustomerDetail::CurrentBillableStatus
            }
          )
      end
      def to_hash
      end

      class CustomerConfig < Metronome::BaseModel
        sig { returns(T.nilable(String)) }
        def salesforce_account_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def salesforce_account_id=(_)
        end

        sig { params(salesforce_account_id: T.nilable(String)).void }
        def initialize(salesforce_account_id:)
        end

        sig { override.returns({salesforce_account_id: T.nilable(String)}) }
        def to_hash
        end
      end

      class CurrentBillableStatus < Metronome::BaseModel
        sig { returns(Symbol) }
        def value
        end

        sig { params(_: Symbol).returns(Symbol) }
        def value=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def effective_at=(_)
        end

        sig { params(value: Symbol, effective_at: T.nilable(Time)).void }
        def initialize(value:, effective_at: nil)
        end

        sig { override.returns({value: Symbol, effective_at: T.nilable(Time)}) }
        def to_hash
        end

        class Value < Metronome::Enum
          abstract!

          BILLABLE = :billable
          UNBILLABLE = :unbillable

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
