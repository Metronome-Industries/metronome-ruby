# typed: strong

module MetronomeSDK
  module Models
    class Override < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::Override, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :starting_at

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :applicable_product_tags

      sig { params(applicable_product_tags: T::Array[String]).void }
      attr_writer :applicable_product_tags

      sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
      attr_reader :credit_type

      sig { params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void }
      attr_writer :credit_type

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :entitled

      sig { params(entitled: T::Boolean).void }
      attr_writer :entitled

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_commit_specific

      sig { params(is_commit_specific: T::Boolean).void }
      attr_writer :is_commit_specific

      # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      # set to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_prorated

      sig { params(is_prorated: T::Boolean).void }
      attr_writer :is_prorated

      sig { returns(T.nilable(Float)) }
      attr_reader :multiplier

      sig { params(multiplier: Float).void }
      attr_writer :multiplier

      sig do
        returns(T.nilable(T::Array[MetronomeSDK::Override::OverrideSpecifier]))
      end
      attr_reader :override_specifiers

      sig do
        params(
          override_specifiers:
            T::Array[MetronomeSDK::Override::OverrideSpecifier::OrHash]
        ).void
      end
      attr_writer :override_specifiers

      sig { returns(T.nilable(T::Array[MetronomeSDK::OverrideTier])) }
      attr_reader :override_tiers

      sig do
        params(
          override_tiers: T::Array[MetronomeSDK::OverrideTier::OrHash]
        ).void
      end
      attr_writer :override_tiers

      sig { returns(T.nilable(MetronomeSDK::OverwriteRate)) }
      attr_reader :overwrite_rate

      sig { params(overwrite_rate: MetronomeSDK::OverwriteRate::OrHash).void }
      attr_writer :overwrite_rate

      # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      sig { returns(T.nilable(Float)) }
      attr_reader :price

      sig { params(price: Float).void }
      attr_writer :price

      sig { returns(T.nilable(Float)) }
      attr_reader :priority

      sig { params(priority: Float).void }
      attr_writer :priority

      sig { returns(T.nilable(MetronomeSDK::Override::Product)) }
      attr_reader :product

      sig { params(product: MetronomeSDK::Override::Product::OrHash).void }
      attr_writer :product

      # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      sig { returns(T.nilable(Float)) }
      attr_reader :quantity

      sig { params(quantity: Float).void }
      attr_writer :quantity

      sig { returns(T.nilable(MetronomeSDK::Override::RateType::TaggedSymbol)) }
      attr_reader :rate_type

      sig { params(rate_type: MetronomeSDK::Override::RateType::OrSymbol).void }
      attr_writer :rate_type

      sig { returns(T.nilable(MetronomeSDK::Override::Target::TaggedSymbol)) }
      attr_reader :target

      sig { params(target: MetronomeSDK::Override::Target::OrSymbol).void }
      attr_writer :target

      # Only set for TIERED rate_type.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Tier])) }
      attr_reader :tiers

      sig { params(tiers: T::Array[MetronomeSDK::Tier::OrHash]).void }
      attr_writer :tiers

      sig { returns(T.nilable(MetronomeSDK::Override::Type::TaggedSymbol)) }
      attr_reader :type

      sig { params(type: MetronomeSDK::Override::Type::OrSymbol).void }
      attr_writer :type

      # Only set for CUSTOM rate_type. This field is interpreted by custom rate
      # processors.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :value

      sig { params(value: T::Hash[Symbol, T.anything]).void }
      attr_writer :value

      sig do
        params(
          id: String,
          starting_at: Time,
          applicable_product_tags: T::Array[String],
          credit_type: MetronomeSDK::CreditTypeData::OrHash,
          ending_before: Time,
          entitled: T::Boolean,
          is_commit_specific: T::Boolean,
          is_prorated: T::Boolean,
          multiplier: Float,
          override_specifiers:
            T::Array[MetronomeSDK::Override::OverrideSpecifier::OrHash],
          override_tiers: T::Array[MetronomeSDK::OverrideTier::OrHash],
          overwrite_rate: MetronomeSDK::OverwriteRate::OrHash,
          price: Float,
          priority: Float,
          product: MetronomeSDK::Override::Product::OrHash,
          quantity: Float,
          rate_type: MetronomeSDK::Override::RateType::OrSymbol,
          target: MetronomeSDK::Override::Target::OrSymbol,
          tiers: T::Array[MetronomeSDK::Tier::OrHash],
          type: MetronomeSDK::Override::Type::OrSymbol,
          value: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        starting_at:,
        applicable_product_tags: nil,
        credit_type: nil,
        ending_before: nil,
        entitled: nil,
        is_commit_specific: nil,
        # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
        # set to true.
        is_prorated: nil,
        multiplier: nil,
        override_specifiers: nil,
        override_tiers: nil,
        overwrite_rate: nil,
        # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
        # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        price: nil,
        priority: nil,
        product: nil,
        # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        quantity: nil,
        rate_type: nil,
        target: nil,
        # Only set for TIERED rate_type.
        tiers: nil,
        type: nil,
        # Only set for CUSTOM rate_type. This field is interpreted by custom rate
        # processors.
        value: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            starting_at: Time,
            applicable_product_tags: T::Array[String],
            credit_type: MetronomeSDK::CreditTypeData,
            ending_before: Time,
            entitled: T::Boolean,
            is_commit_specific: T::Boolean,
            is_prorated: T::Boolean,
            multiplier: Float,
            override_specifiers:
              T::Array[MetronomeSDK::Override::OverrideSpecifier],
            override_tiers: T::Array[MetronomeSDK::OverrideTier],
            overwrite_rate: MetronomeSDK::OverwriteRate,
            price: Float,
            priority: Float,
            product: MetronomeSDK::Override::Product,
            quantity: Float,
            rate_type: MetronomeSDK::Override::RateType::TaggedSymbol,
            target: MetronomeSDK::Override::Target::TaggedSymbol,
            tiers: T::Array[MetronomeSDK::Tier],
            type: MetronomeSDK::Override::Type::TaggedSymbol,
            value: T::Hash[Symbol, T.anything]
          }
        )
      end
      def to_hash
      end

      class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Override::OverrideSpecifier,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              MetronomeSDK::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
            )
          )
        end
        attr_reader :billing_frequency

        sig do
          params(
            billing_frequency:
              MetronomeSDK::Override::OverrideSpecifier::BillingFrequency::OrSymbol
          ).void
        end
        attr_writer :billing_frequency

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :commit_ids

        sig { params(commit_ids: T::Array[String]).void }
        attr_writer :commit_ids

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_reader :presentation_group_values

        sig do
          params(
            presentation_group_values: T::Hash[Symbol, T.nilable(String)]
          ).void
        end
        attr_writer :presentation_group_values

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :pricing_group_values

        sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
        attr_writer :pricing_group_values

        sig { returns(T.nilable(String)) }
        attr_reader :product_id

        sig { params(product_id: String).void }
        attr_writer :product_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :product_tags

        sig { params(product_tags: T::Array[String]).void }
        attr_writer :product_tags

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :recurring_commit_ids

        sig { params(recurring_commit_ids: T::Array[String]).void }
        attr_writer :recurring_commit_ids

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :recurring_credit_ids

        sig { params(recurring_credit_ids: T::Array[String]).void }
        attr_writer :recurring_credit_ids

        sig do
          params(
            billing_frequency:
              MetronomeSDK::Override::OverrideSpecifier::BillingFrequency::OrSymbol,
            commit_ids: T::Array[String],
            presentation_group_values: T::Hash[Symbol, T.nilable(String)],
            pricing_group_values: T::Hash[Symbol, String],
            product_id: String,
            product_tags: T::Array[String],
            recurring_commit_ids: T::Array[String],
            recurring_credit_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          billing_frequency: nil,
          commit_ids: nil,
          presentation_group_values: nil,
          pricing_group_values: nil,
          product_id: nil,
          product_tags: nil,
          recurring_commit_ids: nil,
          recurring_credit_ids: nil
        )
        end

        sig do
          override.returns(
            {
              billing_frequency:
                MetronomeSDK::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol,
              commit_ids: T::Array[String],
              presentation_group_values: T::Hash[Symbol, T.nilable(String)],
              pricing_group_values: T::Hash[Symbol, String],
              product_id: String,
              product_tags: T::Array[String],
              recurring_commit_ids: T::Array[String],
              recurring_credit_ids: T::Array[String]
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
                MetronomeSDK::Override::OverrideSpecifier::BillingFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Product < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Override::Product,
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

      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::Override::RateType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FLAT = T.let(:FLAT, MetronomeSDK::Override::RateType::TaggedSymbol)
        PERCENTAGE =
          T.let(:PERCENTAGE, MetronomeSDK::Override::RateType::TaggedSymbol)
        SUBSCRIPTION =
          T.let(:SUBSCRIPTION, MetronomeSDK::Override::RateType::TaggedSymbol)
        TIERED = T.let(:TIERED, MetronomeSDK::Override::RateType::TaggedSymbol)
        CUSTOM = T.let(:CUSTOM, MetronomeSDK::Override::RateType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MetronomeSDK::Override::RateType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Target
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::Override::Target) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMMIT_RATE =
          T.let(:COMMIT_RATE, MetronomeSDK::Override::Target::TaggedSymbol)
        LIST_RATE =
          T.let(:LIST_RATE, MetronomeSDK::Override::Target::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MetronomeSDK::Override::Target::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::Override::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OVERWRITE =
          T.let(:OVERWRITE, MetronomeSDK::Override::Type::TaggedSymbol)
        MULTIPLIER =
          T.let(:MULTIPLIER, MetronomeSDK::Override::Type::TaggedSymbol)
        TIERED = T.let(:TIERED, MetronomeSDK::Override::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[MetronomeSDK::Override::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
