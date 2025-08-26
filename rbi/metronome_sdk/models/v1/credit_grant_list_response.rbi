# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantListResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::CreditGrantListResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # the Metronome ID of the credit grant
        sig { returns(String) }
        attr_accessor :id

        # The effective balance of the grant as of the end of the customer's current
        # billing period. Expiration deductions will be included only if the grant expires
        # before the end of the current billing period.
        sig do
          returns(MetronomeSDK::Models::V1::CreditGrantListResponse::Balance)
        end
        attr_reader :balance

        sig do
          params(
            balance:
              MetronomeSDK::Models::V1::CreditGrantListResponse::Balance::OrHash
          ).void
        end
        attr_writer :balance

        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :custom_fields

        # the Metronome ID of the customer
        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::CreditGrantListResponse::Deduction
            ]
          )
        end
        attr_accessor :deductions

        sig { returns(Time) }
        attr_accessor :effective_at

        sig { returns(Time) }
        attr_accessor :expires_at

        # the amount of credits initially granted
        sig do
          returns(
            MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount
          )
        end
        attr_reader :grant_amount

        sig do
          params(
            grant_amount:
              MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount::OrHash
          ).void
        end
        attr_writer :grant_amount

        sig { returns(String) }
        attr_accessor :name

        # the amount paid for this credit grant
        sig do
          returns(MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount)
        end
        attr_reader :paid_amount

        sig do
          params(
            paid_amount:
              MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount::OrHash
          ).void
        end
        attr_writer :paid_amount

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::CreditGrantListResponse::PendingDeduction
            ]
          )
        end
        attr_accessor :pending_deductions

        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(T.nilable(String)) }
        attr_accessor :credit_grant_type

        # the Metronome ID of the invoice with the purchase charge for this credit grant,
        # if applicable
        sig { returns(T.nilable(String)) }
        attr_accessor :invoice_id

        # The products which these credits will be applied to. (If unspecified, the
        # credits will be applied to charges for all products.)
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::Models::V1::CreditGrantListResponse::Product
              ]
            )
          )
        end
        attr_reader :products

        sig do
          params(
            products:
              T::Array[
                MetronomeSDK::Models::V1::CreditGrantListResponse::Product::OrHash
              ]
          ).void
        end
        attr_writer :products

        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        # Prevents the creation of duplicates. If a request to create a record is made
        # with a previously used uniqueness key, a new record will not be created and the
        # request will fail with a 409 error.
        sig { returns(T.nilable(String)) }
        attr_accessor :uniqueness_key

        sig do
          params(
            id: String,
            balance:
              MetronomeSDK::Models::V1::CreditGrantListResponse::Balance::OrHash,
            custom_fields: T::Hash[Symbol, String],
            customer_id: String,
            deductions:
              T::Array[
                MetronomeSDK::Models::V1::CreditGrantListResponse::Deduction::OrHash
              ],
            effective_at: Time,
            expires_at: Time,
            grant_amount:
              MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount::OrHash,
            name: String,
            paid_amount:
              MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount::OrHash,
            pending_deductions:
              T::Array[
                MetronomeSDK::Models::V1::CreditGrantListResponse::PendingDeduction::OrHash
              ],
            priority: Float,
            credit_grant_type: T.nilable(String),
            invoice_id: T.nilable(String),
            products:
              T::Array[
                MetronomeSDK::Models::V1::CreditGrantListResponse::Product::OrHash
              ],
            reason: T.nilable(String),
            uniqueness_key: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # the Metronome ID of the credit grant
          id:,
          # The effective balance of the grant as of the end of the customer's current
          # billing period. Expiration deductions will be included only if the grant expires
          # before the end of the current billing period.
          balance:,
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields:,
          # the Metronome ID of the customer
          customer_id:,
          deductions:,
          effective_at:,
          expires_at:,
          # the amount of credits initially granted
          grant_amount:,
          name:,
          # the amount paid for this credit grant
          paid_amount:,
          pending_deductions:,
          priority:,
          credit_grant_type: nil,
          # the Metronome ID of the invoice with the purchase charge for this credit grant,
          # if applicable
          invoice_id: nil,
          # The products which these credits will be applied to. (If unspecified, the
          # credits will be applied to charges for all products.)
          products: nil,
          reason: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              balance:
                MetronomeSDK::Models::V1::CreditGrantListResponse::Balance,
              custom_fields: T::Hash[Symbol, String],
              customer_id: String,
              deductions:
                T::Array[
                  MetronomeSDK::Models::V1::CreditGrantListResponse::Deduction
                ],
              effective_at: Time,
              expires_at: Time,
              grant_amount:
                MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount,
              name: String,
              paid_amount:
                MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount,
              pending_deductions:
                T::Array[
                  MetronomeSDK::Models::V1::CreditGrantListResponse::PendingDeduction
                ],
              priority: Float,
              credit_grant_type: T.nilable(String),
              invoice_id: T.nilable(String),
              products:
                T::Array[
                  MetronomeSDK::Models::V1::CreditGrantListResponse::Product
                ],
              reason: T.nilable(String),
              uniqueness_key: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Balance < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CreditGrantListResponse::Balance,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The end_date of the customer's current billing period.
          sig { returns(Time) }
          attr_accessor :effective_at

          # The grant's current balance including all posted deductions. If the grant has
          # expired, this amount will be 0.
          sig { returns(Float) }
          attr_accessor :excluding_pending

          # The grant's current balance including all posted and pending deductions. If the
          # grant expires before the end of the customer's current billing period, this
          # amount will be 0.
          sig { returns(Float) }
          attr_accessor :including_pending

          # The effective balance of the grant as of the end of the customer's current
          # billing period. Expiration deductions will be included only if the grant expires
          # before the end of the current billing period.
          sig do
            params(
              effective_at: Time,
              excluding_pending: Float,
              including_pending: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # The end_date of the customer's current billing period.
            effective_at:,
            # The grant's current balance including all posted deductions. If the grant has
            # expired, this amount will be 0.
            excluding_pending:,
            # The grant's current balance including all posted and pending deductions. If the
            # grant expires before the end of the customer's current billing period, this
            # amount will be 0.
            including_pending:
          )
          end

          sig do
            override.returns(
              {
                effective_at: Time,
                excluding_pending: Float,
                including_pending: Float
              }
            )
          end
          def to_hash
          end
        end

        class Deduction < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CreditGrantListResponse::Deduction,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # an amount representing the change to the customer's credit balance
          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :created_by

          # the credit grant this entry is related to
          sig { returns(String) }
          attr_accessor :credit_grant_id

          sig { returns(Time) }
          attr_accessor :effective_at

          sig { returns(String) }
          attr_accessor :reason

          # the running balance for this credit type at the time of the ledger entry,
          # including all preceding charges
          sig { returns(Float) }
          attr_accessor :running_balance

          # if this entry is a deduction, the Metronome ID of the invoice where the credit
          # deduction was consumed; if this entry is a grant, the Metronome ID of the
          # invoice where the grant's paid_amount was charged
          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_id

          sig do
            params(
              amount: Float,
              created_by: String,
              credit_grant_id: String,
              effective_at: Time,
              reason: String,
              running_balance: Float,
              invoice_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # an amount representing the change to the customer's credit balance
            amount:,
            created_by:,
            # the credit grant this entry is related to
            credit_grant_id:,
            effective_at:,
            reason:,
            # the running balance for this credit type at the time of the ledger entry,
            # including all preceding charges
            running_balance:,
            # if this entry is a deduction, the Metronome ID of the invoice where the credit
            # deduction was consumed; if this entry is a grant, the Metronome ID of the
            # invoice where the grant's paid_amount was charged
            invoice_id: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                created_by: String,
                credit_grant_id: String,
                effective_at: Time,
                reason: String,
                running_balance: Float,
                invoice_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class GrantAmount < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          # the credit type for the amount granted
          sig do
            returns(
              MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount::CreditType
            )
          end
          attr_reader :credit_type

          sig do
            params(
              credit_type:
                MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount::CreditType::OrHash
            ).void
          end
          attr_writer :credit_type

          # the amount of credits initially granted
          sig do
            params(
              amount: Float,
              credit_type:
                MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount::CreditType::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            amount:,
            # the credit type for the amount granted
            credit_type:
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                credit_type:
                  MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount::CreditType
              }
            )
          end
          def to_hash
          end

          class CreditType < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount::CreditType,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :name

            # the credit type for the amount granted
            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(id:, name:)
            end

            sig { override.returns({ id: String, name: String }) }
            def to_hash
            end
          end
        end

        class PaidAmount < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          # the credit type for the amount paid
          sig do
            returns(
              MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount::CreditType
            )
          end
          attr_reader :credit_type

          sig do
            params(
              credit_type:
                MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount::CreditType::OrHash
            ).void
          end
          attr_writer :credit_type

          # the amount paid for this credit grant
          sig do
            params(
              amount: Float,
              credit_type:
                MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount::CreditType::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            amount:,
            # the credit type for the amount paid
            credit_type:
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                credit_type:
                  MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount::CreditType
              }
            )
          end
          def to_hash
          end

          class CreditType < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount::CreditType,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :name

            # the credit type for the amount paid
            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(id:, name:)
            end

            sig { override.returns({ id: String, name: String }) }
            def to_hash
            end
          end
        end

        class PendingDeduction < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CreditGrantListResponse::PendingDeduction,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # an amount representing the change to the customer's credit balance
          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :created_by

          # the credit grant this entry is related to
          sig { returns(String) }
          attr_accessor :credit_grant_id

          sig { returns(Time) }
          attr_accessor :effective_at

          sig { returns(String) }
          attr_accessor :reason

          # the running balance for this credit type at the time of the ledger entry,
          # including all preceding charges
          sig { returns(Float) }
          attr_accessor :running_balance

          # if this entry is a deduction, the Metronome ID of the invoice where the credit
          # deduction was consumed; if this entry is a grant, the Metronome ID of the
          # invoice where the grant's paid_amount was charged
          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_id

          sig do
            params(
              amount: Float,
              created_by: String,
              credit_grant_id: String,
              effective_at: Time,
              reason: String,
              running_balance: Float,
              invoice_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # an amount representing the change to the customer's credit balance
            amount:,
            created_by:,
            # the credit grant this entry is related to
            credit_grant_id:,
            effective_at:,
            reason:,
            # the running balance for this credit type at the time of the ledger entry,
            # including all preceding charges
            running_balance:,
            # if this entry is a deduction, the Metronome ID of the invoice where the credit
            # deduction was consumed; if this entry is a grant, the Metronome ID of the
            # invoice where the grant's paid_amount was charged
            invoice_id: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                created_by: String,
                credit_grant_id: String,
                effective_at: Time,
                reason: String,
                running_balance: Float,
                invoice_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Product < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CreditGrantListResponse::Product,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
