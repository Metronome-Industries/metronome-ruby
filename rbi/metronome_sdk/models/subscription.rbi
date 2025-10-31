# typed: strong

module MetronomeSDK
  module Models
    class Subscription < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::Subscription, MetronomeSDK::Internal::AnyHash)
        end

      # Previous, current, and next billing periods for the subscription.
      sig { returns(MetronomeSDK::Subscription::BillingPeriods) }
      attr_reader :billing_periods

      sig do
        params(
          billing_periods: MetronomeSDK::Subscription::BillingPeriods::OrHash
        ).void
      end
      attr_writer :billing_periods

      sig do
        returns(MetronomeSDK::Subscription::CollectionSchedule::TaggedSymbol)
      end
      attr_accessor :collection_schedule

      sig { returns(MetronomeSDK::Subscription::Proration) }
      attr_reader :proration

      sig do
        params(proration: MetronomeSDK::Subscription::Proration::OrHash).void
      end
      attr_writer :proration

      # Determines how the subscription's quantity is controlled. Defaults to
      # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
      # directly on the subscription. `initial_quantity` must be provided with this
      # option. Compatible with recurring commits/credits that use POOLED allocation.
      # **SEAT_BASED**: (BETA) Use when you want to pass specific seat identifiers (e.g.
      # add user_123) to increment and decrement a subscription quantity, rather than
      # directly providing the quantity. You must use a **SEAT_BASED** subscription to
      # use a linked recurring credit with an allocation per seat. `seat_config` must be
      # provided with this option.
      sig do
        returns(
          MetronomeSDK::Subscription::QuantityManagementMode::TaggedSymbol
        )
      end
      attr_accessor :quantity_management_mode

      # List of quantity schedule items for the subscription. Only includes the current
      # quantity and future quantity changes.
      sig { returns(T::Array[MetronomeSDK::Subscription::QuantitySchedule]) }
      attr_accessor :quantity_schedule

      sig { returns(Time) }
      attr_accessor :starting_at

      sig { returns(MetronomeSDK::Subscription::SubscriptionRate) }
      attr_reader :subscription_rate

      sig do
        params(
          subscription_rate:
            MetronomeSDK::Subscription::SubscriptionRate::OrHash
        ).void
      end
      attr_writer :subscription_rate

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      sig { returns(T.nilable(String)) }
      attr_reader :fiat_credit_type_id

      sig { params(fiat_credit_type_id: String).void }
      attr_writer :fiat_credit_type_id

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          billing_periods: MetronomeSDK::Subscription::BillingPeriods::OrHash,
          collection_schedule:
            MetronomeSDK::Subscription::CollectionSchedule::OrSymbol,
          proration: MetronomeSDK::Subscription::Proration::OrHash,
          quantity_management_mode:
            MetronomeSDK::Subscription::QuantityManagementMode::OrSymbol,
          quantity_schedule:
            T::Array[MetronomeSDK::Subscription::QuantitySchedule::OrHash],
          starting_at: Time,
          subscription_rate:
            MetronomeSDK::Subscription::SubscriptionRate::OrHash,
          id: String,
          custom_fields: T::Hash[Symbol, String],
          description: String,
          ending_before: Time,
          fiat_credit_type_id: String,
          name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Previous, current, and next billing periods for the subscription.
        billing_periods:,
        collection_schedule:,
        proration:,
        # Determines how the subscription's quantity is controlled. Defaults to
        # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
        # directly on the subscription. `initial_quantity` must be provided with this
        # option. Compatible with recurring commits/credits that use POOLED allocation.
        # **SEAT_BASED**: (BETA) Use when you want to pass specific seat identifiers (e.g.
        # add user_123) to increment and decrement a subscription quantity, rather than
        # directly providing the quantity. You must use a **SEAT_BASED** subscription to
        # use a linked recurring credit with an allocation per seat. `seat_config` must be
        # provided with this option.
        quantity_management_mode:,
        # List of quantity schedule items for the subscription. Only includes the current
        # quantity and future quantity changes.
        quantity_schedule:,
        starting_at:,
        subscription_rate:,
        id: nil,
        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        custom_fields: nil,
        description: nil,
        ending_before: nil,
        fiat_credit_type_id: nil,
        name: nil
      )
      end

      sig do
        override.returns(
          {
            billing_periods: MetronomeSDK::Subscription::BillingPeriods,
            collection_schedule:
              MetronomeSDK::Subscription::CollectionSchedule::TaggedSymbol,
            proration: MetronomeSDK::Subscription::Proration,
            quantity_management_mode:
              MetronomeSDK::Subscription::QuantityManagementMode::TaggedSymbol,
            quantity_schedule:
              T::Array[MetronomeSDK::Subscription::QuantitySchedule],
            starting_at: Time,
            subscription_rate: MetronomeSDK::Subscription::SubscriptionRate,
            id: String,
            custom_fields: T::Hash[Symbol, String],
            description: String,
            ending_before: Time,
            fiat_credit_type_id: String,
            name: String
          }
        )
      end
      def to_hash
      end

      class BillingPeriods < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Subscription::BillingPeriods,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(MetronomeSDK::Subscription::BillingPeriods::Current)
          )
        end
        attr_reader :current

        sig do
          params(
            current: MetronomeSDK::Subscription::BillingPeriods::Current::OrHash
          ).void
        end
        attr_writer :current

        sig do
          returns(T.nilable(MetronomeSDK::Subscription::BillingPeriods::Next))
        end
        attr_reader :next_

        sig do
          params(
            next_: MetronomeSDK::Subscription::BillingPeriods::Next::OrHash
          ).void
        end
        attr_writer :next_

        sig do
          returns(
            T.nilable(MetronomeSDK::Subscription::BillingPeriods::Previous)
          )
        end
        attr_reader :previous

        sig do
          params(
            previous:
              MetronomeSDK::Subscription::BillingPeriods::Previous::OrHash
          ).void
        end
        attr_writer :previous

        # Previous, current, and next billing periods for the subscription.
        sig do
          params(
            current:
              MetronomeSDK::Subscription::BillingPeriods::Current::OrHash,
            next_: MetronomeSDK::Subscription::BillingPeriods::Next::OrHash,
            previous:
              MetronomeSDK::Subscription::BillingPeriods::Previous::OrHash
          ).returns(T.attached_class)
        end
        def self.new(current: nil, next_: nil, previous: nil)
        end

        sig do
          override.returns(
            {
              current: MetronomeSDK::Subscription::BillingPeriods::Current,
              next_: MetronomeSDK::Subscription::BillingPeriods::Next,
              previous: MetronomeSDK::Subscription::BillingPeriods::Previous
            }
          )
        end
        def to_hash
        end

        class Current < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Subscription::BillingPeriods::Current,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :ending_before

          sig { returns(Time) }
          attr_accessor :starting_at

          sig do
            params(ending_before: Time, starting_at: Time).returns(
              T.attached_class
            )
          end
          def self.new(ending_before:, starting_at:)
          end

          sig { override.returns({ ending_before: Time, starting_at: Time }) }
          def to_hash
          end
        end

        class Next < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Subscription::BillingPeriods::Next,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :ending_before

          sig { returns(Time) }
          attr_accessor :starting_at

          sig do
            params(ending_before: Time, starting_at: Time).returns(
              T.attached_class
            )
          end
          def self.new(ending_before:, starting_at:)
          end

          sig { override.returns({ ending_before: Time, starting_at: Time }) }
          def to_hash
          end
        end

        class Previous < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Subscription::BillingPeriods::Previous,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :ending_before

          sig { returns(Time) }
          attr_accessor :starting_at

          sig do
            params(ending_before: Time, starting_at: Time).returns(
              T.attached_class
            )
          end
          def self.new(ending_before:, starting_at:)
          end

          sig { override.returns({ ending_before: Time, starting_at: Time }) }
          def to_hash
          end
        end
      end

      module CollectionSchedule
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MetronomeSDK::Subscription::CollectionSchedule)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADVANCE =
          T.let(
            :ADVANCE,
            MetronomeSDK::Subscription::CollectionSchedule::TaggedSymbol
          )
        ARREARS =
          T.let(
            :ARREARS,
            MetronomeSDK::Subscription::CollectionSchedule::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::Subscription::CollectionSchedule::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Proration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Subscription::Proration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::Subscription::Proration::InvoiceBehavior::TaggedSymbol
          )
        end
        attr_accessor :invoice_behavior

        sig { returns(T::Boolean) }
        attr_accessor :is_prorated

        sig do
          params(
            invoice_behavior:
              MetronomeSDK::Subscription::Proration::InvoiceBehavior::OrSymbol,
            is_prorated: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(invoice_behavior:, is_prorated:)
        end

        sig do
          override.returns(
            {
              invoice_behavior:
                MetronomeSDK::Subscription::Proration::InvoiceBehavior::TaggedSymbol,
              is_prorated: T::Boolean
            }
          )
        end
        def to_hash
        end

        module InvoiceBehavior
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::Subscription::Proration::InvoiceBehavior
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BILL_IMMEDIATELY =
            T.let(
              :BILL_IMMEDIATELY,
              MetronomeSDK::Subscription::Proration::InvoiceBehavior::TaggedSymbol
            )
          BILL_ON_NEXT_COLLECTION_DATE =
            T.let(
              :BILL_ON_NEXT_COLLECTION_DATE,
              MetronomeSDK::Subscription::Proration::InvoiceBehavior::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::Subscription::Proration::InvoiceBehavior::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Determines how the subscription's quantity is controlled. Defaults to
      # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
      # directly on the subscription. `initial_quantity` must be provided with this
      # option. Compatible with recurring commits/credits that use POOLED allocation.
      # **SEAT_BASED**: (BETA) Use when you want to pass specific seat identifiers (e.g.
      # add user_123) to increment and decrement a subscription quantity, rather than
      # directly providing the quantity. You must use a **SEAT_BASED** subscription to
      # use a linked recurring credit with an allocation per seat. `seat_config` must be
      # provided with this option.
      module QuantityManagementMode
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MetronomeSDK::Subscription::QuantityManagementMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEAT_BASED =
          T.let(
            :SEAT_BASED,
            MetronomeSDK::Subscription::QuantityManagementMode::TaggedSymbol
          )
        QUANTITY_ONLY =
          T.let(
            :QUANTITY_ONLY,
            MetronomeSDK::Subscription::QuantityManagementMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::Subscription::QuantityManagementMode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class QuantitySchedule < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Subscription::QuantitySchedule,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(Float) }
        attr_accessor :quantity

        sig { returns(Time) }
        attr_accessor :starting_at

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig do
          params(
            quantity: Float,
            starting_at: Time,
            ending_before: Time
          ).returns(T.attached_class)
        end
        def self.new(quantity:, starting_at:, ending_before: nil)
        end

        sig do
          override.returns(
            { quantity: Float, starting_at: Time, ending_before: Time }
          )
        end
        def to_hash
        end
      end

      class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Subscription::SubscriptionRate,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
          )
        end
        attr_accessor :billing_frequency

        sig { returns(MetronomeSDK::Subscription::SubscriptionRate::Product) }
        attr_reader :product

        sig do
          params(
            product:
              MetronomeSDK::Subscription::SubscriptionRate::Product::OrHash
          ).void
        end
        attr_writer :product

        sig do
          params(
            billing_frequency:
              MetronomeSDK::Subscription::SubscriptionRate::BillingFrequency::OrSymbol,
            product:
              MetronomeSDK::Subscription::SubscriptionRate::Product::OrHash
          ).returns(T.attached_class)
        end
        def self.new(billing_frequency:, product:)
        end

        sig do
          override.returns(
            {
              billing_frequency:
                MetronomeSDK::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol,
              product: MetronomeSDK::Subscription::SubscriptionRate::Product
            }
          )
        end
        def to_hash
        end

        module BillingFrequency
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::Subscription::SubscriptionRate::BillingFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Product < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Subscription::SubscriptionRate::Product,
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
