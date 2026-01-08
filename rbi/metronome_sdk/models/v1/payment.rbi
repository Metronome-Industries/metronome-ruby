# typed: strong

module MetronomeSDK
  module Models
    module V1
      class Payment < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(MetronomeSDK::V1::Payment, MetronomeSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Float)) }
        attr_reader :amount

        sig { params(amount: Float).void }
        attr_writer :amount

        sig { returns(T.nilable(Float)) }
        attr_reader :amount_paid

        sig { params(amount_paid: Float).void }
        attr_writer :amount_paid

        sig { returns(T.nilable(String)) }
        attr_reader :contract_id

        sig { params(contract_id: String).void }
        attr_writer :contract_id

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :customer_id

        sig { params(customer_id: String).void }
        attr_writer :customer_id

        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
        attr_reader :fiat_credit_type

        sig do
          params(fiat_credit_type: MetronomeSDK::CreditTypeData::OrHash).void
        end
        attr_writer :fiat_credit_type

        sig { returns(T.nilable(String)) }
        attr_reader :invoice_id

        sig { params(invoice_id: String).void }
        attr_writer :invoice_id

        sig { returns(T.nilable(MetronomeSDK::V1::Payment::PaymentGateway)) }
        attr_reader :payment_gateway

        sig do
          params(
            payment_gateway: MetronomeSDK::V1::Payment::PaymentGateway::OrHash
          ).void
        end
        attr_writer :payment_gateway

        sig do
          returns(T.nilable(MetronomeSDK::V1::PaymentStatus::TaggedSymbol))
        end
        attr_reader :status

        sig { params(status: MetronomeSDK::V1::PaymentStatus::OrSymbol).void }
        attr_writer :status

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            amount: Float,
            amount_paid: Float,
            contract_id: String,
            created_at: Time,
            customer_id: String,
            error_message: String,
            fiat_credit_type: MetronomeSDK::CreditTypeData::OrHash,
            invoice_id: String,
            payment_gateway: MetronomeSDK::V1::Payment::PaymentGateway::OrHash,
            status: MetronomeSDK::V1::PaymentStatus::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          amount: nil,
          amount_paid: nil,
          contract_id: nil,
          created_at: nil,
          customer_id: nil,
          error_message: nil,
          fiat_credit_type: nil,
          invoice_id: nil,
          payment_gateway: nil,
          status: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Float,
              amount_paid: Float,
              contract_id: String,
              created_at: Time,
              customer_id: String,
              error_message: String,
              fiat_credit_type: MetronomeSDK::CreditTypeData,
              invoice_id: String,
              payment_gateway: MetronomeSDK::V1::Payment::PaymentGateway,
              status: MetronomeSDK::V1::PaymentStatus::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class PaymentGateway < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Payment::PaymentGateway,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(MetronomeSDK::V1::Payment::PaymentGateway::Stripe) }
          attr_reader :stripe

          sig do
            params(
              stripe: MetronomeSDK::V1::Payment::PaymentGateway::Stripe::OrHash
            ).void
          end
          attr_writer :stripe

          sig do
            returns(
              MetronomeSDK::V1::Payment::PaymentGateway::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              stripe: MetronomeSDK::V1::Payment::PaymentGateway::Stripe::OrHash,
              type: MetronomeSDK::V1::Payment::PaymentGateway::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(stripe:, type:)
          end

          sig do
            override.returns(
              {
                stripe: MetronomeSDK::V1::Payment::PaymentGateway::Stripe,
                type:
                  MetronomeSDK::V1::Payment::PaymentGateway::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class Stripe < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Payment::PaymentGateway::Stripe,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :payment_intent_id

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::Payment::PaymentGateway::Stripe::Error
                )
              )
            end
            attr_reader :error

            sig do
              params(
                error:
                  MetronomeSDK::V1::Payment::PaymentGateway::Stripe::Error::OrHash
              ).void
            end
            attr_writer :error

            sig { returns(T.nilable(String)) }
            attr_reader :payment_method_id

            sig { params(payment_method_id: String).void }
            attr_writer :payment_method_id

            sig do
              params(
                payment_intent_id: String,
                error:
                  MetronomeSDK::V1::Payment::PaymentGateway::Stripe::Error::OrHash,
                payment_method_id: String
              ).returns(T.attached_class)
            end
            def self.new(payment_intent_id:, error: nil, payment_method_id: nil)
            end

            sig do
              override.returns(
                {
                  payment_intent_id: String,
                  error:
                    MetronomeSDK::V1::Payment::PaymentGateway::Stripe::Error,
                  payment_method_id: String
                }
              )
            end
            def to_hash
            end

            class Error < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Payment::PaymentGateway::Stripe::Error,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :code

              sig { params(code: String).void }
              attr_writer :code

              sig { returns(T.nilable(String)) }
              attr_reader :decline_code

              sig { params(decline_code: String).void }
              attr_writer :decline_code

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig do
                params(
                  code: String,
                  decline_code: String,
                  type: String
                ).returns(T.attached_class)
              end
              def self.new(code: nil, decline_code: nil, type: nil)
              end

              sig do
                override.returns(
                  { code: String, decline_code: String, type: String }
                )
              end
              def to_hash
              end
            end
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, MetronomeSDK::V1::Payment::PaymentGateway::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::V1::Payment::PaymentGateway::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Payment::PaymentGateway::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
