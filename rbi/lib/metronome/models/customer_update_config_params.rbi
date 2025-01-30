# typed: strong

module Metronome
  module Models
    class CustomerUpdateConfigParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            customer_id: String,
            leave_stripe_invoices_in_draft: T.nilable(T::Boolean),
            salesforce_account_id: T.nilable(String)
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :leave_stripe_invoices_in_draft

      sig { returns(T.nilable(String)) }
      attr_accessor :salesforce_account_id

      sig do
        params(
          customer_id: String,
          leave_stripe_invoices_in_draft: T.nilable(T::Boolean),
          salesforce_account_id: T.nilable(String),
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(
        customer_id:,
        leave_stripe_invoices_in_draft: nil,
        salesforce_account_id: nil,
        request_options: {}
      )
      end

      sig { returns(Metronome::Models::CustomerUpdateConfigParams::Shape) }
      def to_h; end
    end
  end
end
