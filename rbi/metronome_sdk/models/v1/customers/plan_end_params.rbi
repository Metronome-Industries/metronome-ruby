# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanEndParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(String) }
          attr_accessor :customer_plan_id

          # RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
          # at 0:00 UTC (midnight). If not provided, the plan end date will be cleared.
          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          # If true, plan end date can be before the last finalized invoice date. Any
          # invoices generated after the plan end date will be voided.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :void_invoices

          sig { params(void_invoices: T::Boolean).void }
          attr_writer :void_invoices

          # Only applicable when void_invoices is set to true. If true, for every invoice
          # that is voided we will also attempt to void/delete the stripe invoice (if any).
          # Stripe invoices will be voided if finalized or deleted if still in draft state.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :void_stripe_invoices

          sig { params(void_stripe_invoices: T::Boolean).void }
          attr_writer :void_stripe_invoices

          sig do
            params(
              customer_id: String,
              customer_plan_id: String,
              ending_before: Time,
              void_invoices: T::Boolean,
              void_stripe_invoices: T::Boolean,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            customer_id:,
            customer_plan_id:,
            # RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
            # at 0:00 UTC (midnight). If not provided, the plan end date will be cleared.
            ending_before: nil,
            # If true, plan end date can be before the last finalized invoice date. Any
            # invoices generated after the plan end date will be voided.
            void_invoices: nil,
            # Only applicable when void_invoices is set to true. If true, for every invoice
            # that is voided we will also attempt to void/delete the stripe invoice (if any).
            # Stripe invoices will be voided if finalized or deleted if still in draft state.
            void_stripe_invoices: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                customer_id: String,
                customer_plan_id: String,
                ending_before: Time,
                void_invoices: T::Boolean,
                void_stripe_invoices: T::Boolean,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
