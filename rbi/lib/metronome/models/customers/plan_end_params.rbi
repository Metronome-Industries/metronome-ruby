# typed: strong

module Metronome
  module Models
    module Customers
      class PlanEndParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              customer_id: String,
              customer_plan_id: String,
              ending_before: Time,
              void_invoices: T::Boolean,
              void_stripe_invoices: T::Boolean
            },
            Metronome::RequestParameters::Shape
          )
        end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :customer_plan_id

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :void_invoices

        sig { params(void_invoices: T::Boolean).void }
        attr_writer :void_invoices

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
            request_options: Metronome::RequestOpts
          ).void
        end
        def initialize(
          customer_id:,
          customer_plan_id:,
          ending_before: nil,
          void_invoices: nil,
          void_stripe_invoices: nil,
          request_options: {}
        ); end

        sig { returns(Metronome::Models::Customers::PlanEndParams::Shape) }
        def to_h; end
      end
    end
  end
end
