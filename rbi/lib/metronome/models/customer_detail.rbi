# typed: strong

module Metronome
  module Models
    class CustomerDetail < Metronome::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          custom_fields: T::Hash[Symbol, String],
          customer_config: Metronome::Models::CustomerDetail::CustomerConfig,
          external_id: String,
          ingest_aliases: T::Array[String],
          name: String,
          current_billable_status: Metronome::Models::CustomerDetail::CurrentBillableStatus
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :custom_fields

      sig { returns(Metronome::Models::CustomerDetail::CustomerConfig) }
      attr_accessor :customer_config

      sig { returns(String) }
      attr_accessor :external_id

      sig { returns(T::Array[String]) }
      attr_accessor :ingest_aliases

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(Metronome::Models::CustomerDetail::CurrentBillableStatus)) }
      attr_reader :current_billable_status

      sig { params(current_billable_status: Metronome::Models::CustomerDetail::CurrentBillableStatus).void }
      attr_writer :current_billable_status

      sig do
        params(
          id: String,
          custom_fields: T::Hash[Symbol, String],
          customer_config: Metronome::Models::CustomerDetail::CustomerConfig,
          external_id: String,
          ingest_aliases: T::Array[String],
          name: String,
          current_billable_status: Metronome::Models::CustomerDetail::CurrentBillableStatus
        ).void
      end
      def initialize(
        id:,
        custom_fields:,
        customer_config:,
        external_id:,
        ingest_aliases:,
        name:,
        current_billable_status: nil
      )
      end

      sig { returns(Metronome::Models::CustomerDetail::Shape) }
      def to_h; end

      class CustomerConfig < Metronome::BaseModel
        Shape = T.type_alias { {salesforce_account_id: T.nilable(String)} }

        sig { returns(T.nilable(String)) }
        attr_accessor :salesforce_account_id

        sig { params(salesforce_account_id: T.nilable(String)).void }
        def initialize(salesforce_account_id:); end

        sig { returns(Metronome::Models::CustomerDetail::CustomerConfig::Shape) }
        def to_h; end
      end

      class CurrentBillableStatus < Metronome::BaseModel
        Shape = T.type_alias { {value: Symbol, effective_at: T.nilable(Time)} }

        sig { returns(Symbol) }
        attr_accessor :value

        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_at

        sig { params(value: Symbol, effective_at: T.nilable(Time)).void }
        def initialize(value:, effective_at: nil); end

        sig { returns(Metronome::Models::CustomerDetail::CurrentBillableStatus::Shape) }
        def to_h; end

        class Value < Metronome::Enum
          abstract!

          BILLABLE = :billable
          UNBILLABLE = :unbillable

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
