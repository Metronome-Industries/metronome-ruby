# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerUpdateConfigParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        sig { returns(String) }
        attr_accessor :customer_id

        # Leave in draft or set to auto-advance on invoices sent to Stripe. Falls back to
        # the client-level config if unset, which defaults to true if unset.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :leave_stripe_invoices_in_draft

        # The Salesforce account ID for the customer
        sig { returns(T.nilable(String)) }
        attr_accessor :salesforce_account_id

        sig do
          params(
            customer_id: String,
            leave_stripe_invoices_in_draft: T.nilable(T::Boolean),
            salesforce_account_id: T.nilable(String),
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # Leave in draft or set to auto-advance on invoices sent to Stripe. Falls back to
          # the client-level config if unset, which defaults to true if unset.
          leave_stripe_invoices_in_draft: nil,
          # The Salesforce account ID for the customer
          salesforce_account_id: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                customer_id: String,
                leave_stripe_invoices_in_draft: T.nilable(T::Boolean),
                salesforce_account_id: T.nilable(String),
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
