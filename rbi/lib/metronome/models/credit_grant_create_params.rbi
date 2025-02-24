# typed: strong

module Metronome
  module Models
    class CreditGrantCreateParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(Time) }
      def expires_at
      end

      sig { params(_: Time).returns(Time) }
      def expires_at=(_)
      end

      sig { returns(Metronome::Models::CreditGrantCreateParams::GrantAmount) }
      def grant_amount
      end

      sig do
        params(_: Metronome::Models::CreditGrantCreateParams::GrantAmount)
          .returns(Metronome::Models::CreditGrantCreateParams::GrantAmount)
      end
      def grant_amount=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Metronome::Models::CreditGrantCreateParams::PaidAmount) }
      def paid_amount
      end

      sig do
        params(_: Metronome::Models::CreditGrantCreateParams::PaidAmount)
          .returns(Metronome::Models::CreditGrantCreateParams::PaidAmount)
      end
      def paid_amount=(_)
      end

      sig { returns(Float) }
      def priority
      end

      sig { params(_: Float).returns(Float) }
      def priority=(_)
      end

      sig { returns(T.nilable(String)) }
      def credit_grant_type
      end

      sig { params(_: String).returns(String) }
      def credit_grant_type=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def custom_fields
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_fields=(_)
      end

      sig { returns(T.nilable(Time)) }
      def effective_at
      end

      sig { params(_: Time).returns(Time) }
      def effective_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def invoice_date
      end

      sig { params(_: Time).returns(Time) }
      def invoice_date=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def product_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def product_ids=(_)
      end

      sig { returns(T.nilable(String)) }
      def reason
      end

      sig { params(_: String).returns(String) }
      def reason=(_)
      end

      sig { returns(T.nilable(Metronome::Models::CreditGrantCreateParams::RolloverSettings)) }
      def rollover_settings
      end

      sig do
        params(_: Metronome::Models::CreditGrantCreateParams::RolloverSettings)
          .returns(Metronome::Models::CreditGrantCreateParams::RolloverSettings)
      end
      def rollover_settings=(_)
      end

      sig { returns(T.nilable(String)) }
      def uniqueness_key
      end

      sig { params(_: String).returns(String) }
      def uniqueness_key=(_)
      end

      sig do
        params(
          customer_id: String,
          expires_at: Time,
          grant_amount: Metronome::Models::CreditGrantCreateParams::GrantAmount,
          name: String,
          paid_amount: Metronome::Models::CreditGrantCreateParams::PaidAmount,
          priority: Float,
          credit_grant_type: String,
          custom_fields: T::Hash[Symbol, String],
          effective_at: Time,
          invoice_date: Time,
          product_ids: T::Array[String],
          reason: String,
          rollover_settings: Metronome::Models::CreditGrantCreateParams::RolloverSettings,
          uniqueness_key: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        customer_id:,
        expires_at:,
        grant_amount:,
        name:,
        paid_amount:,
        priority:,
        credit_grant_type: nil,
        custom_fields: nil,
        effective_at: nil,
        invoice_date: nil,
        product_ids: nil,
        reason: nil,
        rollover_settings: nil,
        uniqueness_key: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              customer_id: String,
              expires_at: Time,
              grant_amount: Metronome::Models::CreditGrantCreateParams::GrantAmount,
              name: String,
              paid_amount: Metronome::Models::CreditGrantCreateParams::PaidAmount,
              priority: Float,
              credit_grant_type: String,
              custom_fields: T::Hash[Symbol, String],
              effective_at: Time,
              invoice_date: Time,
              product_ids: T::Array[String],
              reason: String,
              rollover_settings: Metronome::Models::CreditGrantCreateParams::RolloverSettings,
              uniqueness_key: String,
              request_options: Metronome::RequestOptions
            }
          )
      end
      def to_hash
      end

      class GrantAmount < Metronome::BaseModel
        sig { returns(Float) }
        def amount
        end

        sig { params(_: Float).returns(Float) }
        def amount=(_)
        end

        sig { returns(String) }
        def credit_type_id
        end

        sig { params(_: String).returns(String) }
        def credit_type_id=(_)
        end

        sig { params(amount: Float, credit_type_id: String).void }
        def initialize(amount:, credit_type_id:)
        end

        sig { override.returns({amount: Float, credit_type_id: String}) }
        def to_hash
        end
      end

      class PaidAmount < Metronome::BaseModel
        sig { returns(Float) }
        def amount
        end

        sig { params(_: Float).returns(Float) }
        def amount=(_)
        end

        sig { returns(String) }
        def credit_type_id
        end

        sig { params(_: String).returns(String) }
        def credit_type_id=(_)
        end

        sig { params(amount: Float, credit_type_id: String).void }
        def initialize(amount:, credit_type_id:)
        end

        sig { override.returns({amount: Float, credit_type_id: String}) }
        def to_hash
        end
      end

      class RolloverSettings < Metronome::BaseModel
        sig { returns(Time) }
        def expires_at
        end

        sig { params(_: Time).returns(Time) }
        def expires_at=(_)
        end

        sig { returns(Float) }
        def priority
        end

        sig { params(_: Float).returns(Float) }
        def priority=(_)
        end

        sig { returns(T.any(Metronome::Models::RolloverAmountMaxPercentage, Metronome::Models::RolloverAmountMaxAmount)) }
        def rollover_amount
        end

        sig do
          params(
            _: T.any(Metronome::Models::RolloverAmountMaxPercentage, Metronome::Models::RolloverAmountMaxAmount)
          )
            .returns(T.any(Metronome::Models::RolloverAmountMaxPercentage, Metronome::Models::RolloverAmountMaxAmount))
        end
        def rollover_amount=(_)
        end

        sig do
          params(
            expires_at: Time,
            priority: Float,
            rollover_amount: T.any(Metronome::Models::RolloverAmountMaxPercentage, Metronome::Models::RolloverAmountMaxAmount)
          )
            .void
        end
        def initialize(expires_at:, priority:, rollover_amount:)
        end

        sig do
          override
            .returns(
              {
                expires_at: Time,
                priority: Float,
                rollover_amount: T.any(Metronome::Models::RolloverAmountMaxPercentage, Metronome::Models::RolloverAmountMaxAmount)
              }
            )
        end
        def to_hash
        end

        class RolloverAmount < Metronome::Union
          abstract!

          sig do
            override
              .returns(
                [[NilClass, Metronome::Models::RolloverAmountMaxPercentage], [NilClass, Metronome::Models::RolloverAmountMaxAmount]]
              )
          end
          private_class_method def self.variants
          end
        end
      end
    end
  end
end
