# typed: strong

module Metronome
  module Models
    class CustomerUpdateConfigParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def leave_stripe_invoices_in_draft
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def leave_stripe_invoices_in_draft=(_)
      end

      sig { returns(T.nilable(String)) }
      def salesforce_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def salesforce_account_id=(_)
      end

      sig do
        params(
          customer_id: String,
          leave_stripe_invoices_in_draft: T.nilable(T::Boolean),
          salesforce_account_id: T.nilable(String),
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        customer_id:,
        leave_stripe_invoices_in_draft: nil,
        salesforce_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              customer_id: String,
              leave_stripe_invoices_in_draft: T.nilable(T::Boolean),
              salesforce_account_id: T.nilable(String),
              request_options: Metronome::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
