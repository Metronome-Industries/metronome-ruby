# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CreditGrantCreateParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # the Metronome ID of the customer
        sig { returns(String) }
        attr_accessor :customer_id

        # The credit grant will only apply to usage or charges dated before this timestamp
        sig { returns(Time) }
        attr_accessor :expires_at

        # the amount of credits granted
        sig { returns(MetronomeSDK::V1::CreditGrantCreateParams::GrantAmount) }
        attr_reader :grant_amount

        sig do
          params(
            grant_amount:
              MetronomeSDK::V1::CreditGrantCreateParams::GrantAmount::OrHash
          ).void
        end
        attr_writer :grant_amount

        # the name of the credit grant as it will appear on invoices
        sig { returns(String) }
        attr_accessor :name

        # the amount paid for this credit grant
        sig { returns(MetronomeSDK::V1::CreditGrantCreateParams::PaidAmount) }
        attr_reader :paid_amount

        sig do
          params(
            paid_amount:
              MetronomeSDK::V1::CreditGrantCreateParams::PaidAmount::OrHash
          ).void
        end
        attr_writer :paid_amount

        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(T.nilable(String)) }
        attr_reader :credit_grant_type

        sig { params(credit_grant_type: String).void }
        attr_writer :credit_grant_type

        # Custom fields to attach to the credit grant.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        # The credit grant will only apply to usage or charges dated on or after this
        # timestamp
        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        # The date to issue an invoice for the paid_amount.
        sig { returns(T.nilable(Time)) }
        attr_reader :invoice_date

        sig { params(invoice_date: Time).void }
        attr_writer :invoice_date

        # The product(s) which these credits will be applied to. (If unspecified, the
        # credits will be applied to charges for all products.). The array ordering
        # specified here will be used to determine the order in which credits will be
        # applied to invoice line items
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :product_ids

        sig { params(product_ids: T::Array[String]).void }
        attr_writer :product_ids

        sig { returns(T.nilable(String)) }
        attr_reader :reason

        sig { params(reason: String).void }
        attr_writer :reason

        # Configure a rollover for this credit grant so if it expires it rolls over a
        # configured amount to a new credit grant. This feature is currently opt-in only.
        # Contact Metronome to be added to the beta.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings
            )
          )
        end
        attr_reader :rollover_settings

        sig do
          params(
            rollover_settings:
              MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::OrHash
          ).void
        end
        attr_writer :rollover_settings

        # Prevents the creation of duplicates. If a request to create a record is made
        # with a previously used uniqueness key, a new record will not be created and the
        # request will fail with a 409 error.
        sig { returns(T.nilable(String)) }
        attr_reader :uniqueness_key

        sig { params(uniqueness_key: String).void }
        attr_writer :uniqueness_key

        sig do
          params(
            customer_id: String,
            expires_at: Time,
            grant_amount:
              MetronomeSDK::V1::CreditGrantCreateParams::GrantAmount::OrHash,
            name: String,
            paid_amount:
              MetronomeSDK::V1::CreditGrantCreateParams::PaidAmount::OrHash,
            priority: Float,
            credit_grant_type: String,
            custom_fields: T::Hash[Symbol, String],
            effective_at: Time,
            invoice_date: Time,
            product_ids: T::Array[String],
            reason: String,
            rollover_settings:
              MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::OrHash,
            uniqueness_key: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # the Metronome ID of the customer
          customer_id:,
          # The credit grant will only apply to usage or charges dated before this timestamp
          expires_at:,
          # the amount of credits granted
          grant_amount:,
          # the name of the credit grant as it will appear on invoices
          name:,
          # the amount paid for this credit grant
          paid_amount:,
          priority:,
          credit_grant_type: nil,
          # Custom fields to attach to the credit grant.
          custom_fields: nil,
          # The credit grant will only apply to usage or charges dated on or after this
          # timestamp
          effective_at: nil,
          # The date to issue an invoice for the paid_amount.
          invoice_date: nil,
          # The product(s) which these credits will be applied to. (If unspecified, the
          # credits will be applied to charges for all products.). The array ordering
          # specified here will be used to determine the order in which credits will be
          # applied to invoice line items
          product_ids: nil,
          reason: nil,
          # Configure a rollover for this credit grant so if it expires it rolls over a
          # configured amount to a new credit grant. This feature is currently opt-in only.
          # Contact Metronome to be added to the beta.
          rollover_settings: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              expires_at: Time,
              grant_amount:
                MetronomeSDK::V1::CreditGrantCreateParams::GrantAmount,
              name: String,
              paid_amount:
                MetronomeSDK::V1::CreditGrantCreateParams::PaidAmount,
              priority: Float,
              credit_grant_type: String,
              custom_fields: T::Hash[Symbol, String],
              effective_at: Time,
              invoice_date: Time,
              product_ids: T::Array[String],
              reason: String,
              rollover_settings:
                MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings,
              uniqueness_key: String,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class GrantAmount < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::CreditGrantCreateParams::GrantAmount,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          # the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
          sig { returns(String) }
          attr_accessor :credit_type_id

          # the amount of credits granted
          sig do
            params(amount: Float, credit_type_id: String).returns(
              T.attached_class
            )
          end
          def self.new(
            amount:,
            # the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
            credit_type_id:
          )
          end

          sig { override.returns({ amount: Float, credit_type_id: String }) }
          def to_hash
          end
        end

        class PaidAmount < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::CreditGrantCreateParams::PaidAmount,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          # the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
          sig { returns(String) }
          attr_accessor :credit_type_id

          # the amount paid for this credit grant
          sig do
            params(amount: Float, credit_type_id: String).returns(
              T.attached_class
            )
          end
          def self.new(
            amount:,
            # the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
            credit_type_id:
          )
          end

          sig { override.returns({ amount: Float, credit_type_id: String }) }
          def to_hash
          end
        end

        class RolloverSettings < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The date to expire the rollover credits.
          sig { returns(Time) }
          attr_accessor :expires_at

          # The priority to give the rollover credit grant that gets created when a rollover
          # happens.
          sig { returns(Float) }
          attr_accessor :priority

          # Specify how much to rollover to the rollover credit grant
          sig do
            returns(
              T.any(
                MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0,
                MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1
              )
            )
          end
          attr_accessor :rollover_amount

          # Configure a rollover for this credit grant so if it expires it rolls over a
          # configured amount to a new credit grant. This feature is currently opt-in only.
          # Contact Metronome to be added to the beta.
          sig do
            params(
              expires_at: Time,
              priority: Float,
              rollover_amount:
                T.any(
                  MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0::OrHash,
                  MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The date to expire the rollover credits.
            expires_at:,
            # The priority to give the rollover credit grant that gets created when a rollover
            # happens.
            priority:,
            # Specify how much to rollover to the rollover credit grant
            rollover_amount:
          )
          end

          sig do
            override.returns(
              {
                expires_at: Time,
                priority: Float,
                rollover_amount:
                  T.any(
                    MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0,
                    MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1
                  )
              }
            )
          end
          def to_hash
          end

          # Specify how much to rollover to the rollover credit grant
          module RolloverAmount
            extend MetronomeSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0,
                  MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1
                )
              end

            class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Rollover up to a percentage of the original credit grant amount.
              sig do
                returns(
                  MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0::Type::OrSymbol
                )
              end
              attr_accessor :type

              # The maximum percentage (0-1) of the original credit grant to rollover.
              sig { returns(Float) }
              attr_accessor :value

              sig do
                params(
                  type:
                    MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0::Type::OrSymbol,
                  value: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Rollover up to a percentage of the original credit grant amount.
                type:,
                # The maximum percentage (0-1) of the original credit grant to rollover.
                value:
              )
              end

              sig do
                override.returns(
                  {
                    type:
                      MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0::Type::OrSymbol,
                    value: Float
                  }
                )
              end
              def to_hash
              end

              # Rollover up to a percentage of the original credit grant amount.
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MAX_PERCENTAGE =
                  T.let(
                    :MAX_PERCENTAGE,
                    MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember0::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Rollover up to a fixed amount of the original credit grant amount.
              sig do
                returns(
                  MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1::Type::OrSymbol
                )
              end
              attr_accessor :type

              # The maximum amount to rollover.
              sig { returns(Float) }
              attr_accessor :value

              sig do
                params(
                  type:
                    MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1::Type::OrSymbol,
                  value: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Rollover up to a fixed amount of the original credit grant amount.
                type:,
                # The maximum amount to rollover.
                value:
              )
              end

              sig do
                override.returns(
                  {
                    type:
                      MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1::Type::OrSymbol,
                    value: Float
                  }
                )
              end
              def to_hash
              end

              # Rollover up to a fixed amount of the original credit grant amount.
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MAX_AMOUNT =
                  T.let(
                    :MAX_AMOUNT,
                    MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::UnionMember1::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
