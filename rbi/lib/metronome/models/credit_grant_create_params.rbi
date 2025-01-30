# typed: strong

module Metronome
  module Models
    class CreditGrantCreateParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
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
            uniqueness_key: String
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(Time) }
      attr_accessor :expires_at

      sig { returns(Metronome::Models::CreditGrantCreateParams::GrantAmount) }
      attr_accessor :grant_amount

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Metronome::Models::CreditGrantCreateParams::PaidAmount) }
      attr_accessor :paid_amount

      sig { returns(Float) }
      attr_accessor :priority

      sig { returns(T.nilable(String)) }
      attr_reader :credit_grant_type

      sig { params(credit_grant_type: String).void }
      attr_writer :credit_grant_type

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(Time)) }
      attr_reader :effective_at

      sig { params(effective_at: Time).void }
      attr_writer :effective_at

      sig { returns(T.nilable(Time)) }
      attr_reader :invoice_date

      sig { params(invoice_date: Time).void }
      attr_writer :invoice_date

      sig { returns(T::Array[String]) }
      attr_reader :product_ids

      sig { params(product_ids: T::Array[String]).void }
      attr_writer :product_ids

      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      sig { returns(T.nilable(Metronome::Models::CreditGrantCreateParams::RolloverSettings)) }
      attr_reader :rollover_settings

      sig { params(rollover_settings: Metronome::Models::CreditGrantCreateParams::RolloverSettings).void }
      attr_writer :rollover_settings

      sig { returns(T.nilable(String)) }
      attr_reader :uniqueness_key

      sig { params(uniqueness_key: String).void }
      attr_writer :uniqueness_key

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
          request_options: Metronome::RequestOpts
        ).void
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
      ); end

      sig { returns(Metronome::Models::CreditGrantCreateParams::Shape) }
      def to_h; end

      class GrantAmount < Metronome::BaseModel
        Shape = T.type_alias { {amount: Float, credit_type_id: String} }

        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :credit_type_id

        sig { params(amount: Float, credit_type_id: String).void }
        def initialize(amount:, credit_type_id:); end

        sig { returns(Metronome::Models::CreditGrantCreateParams::GrantAmount::Shape) }
        def to_h; end
      end

      class PaidAmount < Metronome::BaseModel
        Shape = T.type_alias { {amount: Float, credit_type_id: String} }

        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :credit_type_id

        sig { params(amount: Float, credit_type_id: String).void }
        def initialize(amount:, credit_type_id:); end

        sig { returns(Metronome::Models::CreditGrantCreateParams::PaidAmount::Shape) }
        def to_h; end
      end

      class RolloverSettings < Metronome::BaseModel
        Shape = T.type_alias do
          {
            expires_at: Time,
            priority: Float,
            rollover_amount: Metronome::Models::CreditGrantCreateParams::RolloverSettings::RolloverAmount::Variants
          }
        end

        sig { returns(Time) }
        attr_accessor :expires_at

        sig { returns(Float) }
        attr_accessor :priority

        sig do
          returns(Metronome::Models::CreditGrantCreateParams::RolloverSettings::RolloverAmount::Variants)
        end
        attr_accessor :rollover_amount

        sig do
          params(
            expires_at: Time,
            priority: Float,
            rollover_amount: Metronome::Models::CreditGrantCreateParams::RolloverSettings::RolloverAmount::Variants
          ).void
        end
        def initialize(expires_at:, priority:, rollover_amount:); end

        sig { returns(Metronome::Models::CreditGrantCreateParams::RolloverSettings::Shape) }
        def to_h; end

        class RolloverAmount < Metronome::Union
          abstract!

          Variants = T.type_alias do
            T.any(Metronome::Models::RolloverAmountMaxPercentage, Metronome::Models::RolloverAmountMaxAmount)
          end

          sig do
            override.returns(
              [
                [NilClass, Metronome::Models::RolloverAmountMaxPercentage],
                [NilClass, Metronome::Models::RolloverAmountMaxAmount]
              ]
            )
          end
          private_class_method def self.variants; end
        end
      end
    end
  end
end
