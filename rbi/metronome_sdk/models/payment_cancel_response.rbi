# typed: strong

module MetronomeSDK
  module Models
    class PaymentCancelResponse < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::Models::PaymentCancelResponse,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig { returns(MetronomeSDK::Models::PaymentCancelResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: MetronomeSDK::Models::PaymentCancelResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: MetronomeSDK::Models::PaymentCancelResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: MetronomeSDK::Models::PaymentCancelResponse::Data }
        )
      end
      def to_hash
      end

      class Data < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::PaymentCancelResponse::Data,
              MetronomeSDK::Internal::AnyHash
            )
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

        sig do
          returns(
            T.nilable(
              MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway
            )
          )
        end
        attr_reader :payment_gateway

        sig do
          params(
            payment_gateway:
              MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::OrHash
          ).void
        end
        attr_writer :payment_gateway

        sig do
          returns(
            T.nilable(
              MetronomeSDK::Models::PaymentCancelResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              MetronomeSDK::Models::PaymentCancelResponse::Data::Status::OrSymbol
          ).void
        end
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
            payment_gateway:
              MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::OrHash,
            status:
              MetronomeSDK::Models::PaymentCancelResponse::Data::Status::OrSymbol,
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
              payment_gateway:
                MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway,
              status:
                MetronomeSDK::Models::PaymentCancelResponse::Data::Status::TaggedSymbol,
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
                MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Stripe
            )
          end
          attr_reader :stripe

          sig do
            params(
              stripe:
                MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Stripe::OrHash
            ).void
          end
          attr_writer :stripe

          sig do
            returns(
              MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              stripe:
                MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Stripe::OrHash,
              type:
                MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(stripe:, type:)
          end

          sig do
            override.returns(
              {
                stripe:
                  MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Stripe,
                type:
                  MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class Stripe < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Stripe,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :payment_intent_id

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Stripe::Error
                )
              )
            end
            attr_reader :error

            sig do
              params(
                error:
                  MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Stripe::Error::OrHash
              ).void
            end
            attr_writer :error

            sig do
              params(
                payment_intent_id: String,
                error:
                  MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Stripe::Error::OrHash
              ).returns(T.attached_class)
            end
            def self.new(payment_intent_id:, error: nil)
            end

            sig do
              override.returns(
                {
                  payment_intent_id: String,
                  error:
                    MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Stripe::Error
                }
              )
            end
            def to_hash
            end

            class Error < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Stripe::Error,
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
                T.all(
                  Symbol,
                  MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::PaymentCancelResponse::Data::PaymentGateway::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Status
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::Models::PaymentCancelResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              MetronomeSDK::Models::PaymentCancelResponse::Data::Status::TaggedSymbol
            )
          REQUIRES_INTERVENTION =
            T.let(
              :requires_intervention,
              MetronomeSDK::Models::PaymentCancelResponse::Data::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              MetronomeSDK::Models::PaymentCancelResponse::Data::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              MetronomeSDK::Models::PaymentCancelResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::Models::PaymentCancelResponse::Data::Status::TaggedSymbol
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
