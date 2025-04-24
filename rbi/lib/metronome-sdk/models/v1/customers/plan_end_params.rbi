# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanEndParams < MetronomeSDK::BaseModel
          extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig { returns(String) }
          def customer_plan_id
          end

          sig { params(_: String).returns(String) }
          def customer_plan_id=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def void_invoices
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def void_invoices=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def void_stripe_invoices
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def void_stripe_invoices=(_)
          end

          sig do
            params(
              customer_id: String,
              customer_plan_id: String,
              ending_before: Time,
              void_invoices: T::Boolean,
              void_stripe_invoices: T::Boolean,
              request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(
            customer_id:,
            customer_plan_id:,
            ending_before: nil,
            void_invoices: nil,
            void_stripe_invoices: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
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
