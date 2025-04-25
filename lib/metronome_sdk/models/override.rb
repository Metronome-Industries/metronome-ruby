# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Override < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute starting_at
      #
      #   @return [Time]
      required :starting_at, Time

      # @!attribute applicable_product_tags
      #
      #   @return [Array<String>, nil]
      optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!attribute credit_type
      #
      #   @return [MetronomeSDK::Models::CreditTypeData, nil]
      optional :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

      # @!attribute ending_before
      #
      #   @return [Time, nil]
      optional :ending_before, Time

      # @!attribute entitled
      #
      #   @return [Boolean, nil]
      optional :entitled, MetronomeSDK::Internal::Type::Boolean

      # @!attribute is_commit_specific
      #
      #   @return [Boolean, nil]
      optional :is_commit_specific, MetronomeSDK::Internal::Type::Boolean

      # @!attribute is_prorated
      #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      #   set to true.
      #
      #   @return [Boolean, nil]
      optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

      # @!attribute multiplier
      #
      #   @return [Float, nil]
      optional :multiplier, Float

      # @!attribute override_specifiers
      #
      #   @return [Array<MetronomeSDK::Models::Override::OverrideSpecifier>, nil]
      optional :override_specifiers,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::Override::OverrideSpecifier] }

      # @!attribute override_tiers
      #
      #   @return [Array<MetronomeSDK::Models::Override::OverrideTier>, nil]
      optional :override_tiers,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::Override::OverrideTier] }

      # @!attribute overwrite_rate
      #
      #   @return [MetronomeSDK::Models::Override::OverwriteRate, nil]
      optional :overwrite_rate, -> { MetronomeSDK::Models::Override::OverwriteRate }

      # @!attribute price
      #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #
      #   @return [Float, nil]
      optional :price, Float

      # @!attribute priority
      #
      #   @return [Float, nil]
      optional :priority, Float

      # @!attribute product
      #
      #   @return [MetronomeSDK::Models::Override::Product, nil]
      optional :product, -> { MetronomeSDK::Models::Override::Product }

      # @!attribute quantity
      #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #
      #   @return [Float, nil]
      optional :quantity, Float

      # @!attribute rate_type
      #
      #   @return [Symbol, MetronomeSDK::Models::Override::RateType, nil]
      optional :rate_type, enum: -> { MetronomeSDK::Models::Override::RateType }

      # @!attribute target
      #
      #   @return [Symbol, MetronomeSDK::Models::Override::Target, nil]
      optional :target, enum: -> { MetronomeSDK::Models::Override::Target }

      # @!attribute tiers
      #   Only set for TIERED rate_type.
      #
      #   @return [Array<MetronomeSDK::Models::Tier>, nil]
      optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::Tier] }

      # @!attribute type
      #
      #   @return [Symbol, MetronomeSDK::Models::Override::Type, nil]
      optional :type, enum: -> { MetronomeSDK::Models::Override::Type }

      # @!attribute value
      #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
      #   processors.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :value, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

      # @!method initialize(id:, starting_at:, applicable_product_tags: nil, credit_type: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, is_prorated: nil, multiplier: nil, override_specifiers: nil, override_tiers: nil, overwrite_rate: nil, price: nil, priority: nil, product: nil, quantity: nil, rate_type: nil, target: nil, tiers: nil, type: nil, value: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::Override} for more details.
      #
      #   @param id [String]
      #
      #   @param starting_at [Time]
      #
      #   @param applicable_product_tags [Array<String>]
      #
      #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
      #
      #   @param ending_before [Time]
      #
      #   @param entitled [Boolean]
      #
      #   @param is_commit_specific [Boolean]
      #
      #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      #   ...
      #
      #   @param multiplier [Float]
      #
      #   @param override_specifiers [Array<MetronomeSDK::Models::Override::OverrideSpecifier>]
      #
      #   @param override_tiers [Array<MetronomeSDK::Models::Override::OverrideTier>]
      #
      #   @param overwrite_rate [MetronomeSDK::Models::Override::OverwriteRate]
      #
      #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
      #   ...
      #
      #   @param priority [Float]
      #
      #   @param product [MetronomeSDK::Models::Override::Product]
      #
      #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #
      #   @param rate_type [Symbol, MetronomeSDK::Models::Override::RateType]
      #
      #   @param target [Symbol, MetronomeSDK::Models::Override::Target]
      #
      #   @param tiers [Array<MetronomeSDK::Models::Tier>] Only set for TIERED rate_type.
      #
      #   @param type [Symbol, MetronomeSDK::Models::Override::Type]
      #
      #   @param value [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
      #   ...

      class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute commit_ids
        #
        #   @return [Array<String>, nil]
        optional :commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute presentation_group_values
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String, nil?: true]

        # @!attribute pricing_group_values
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute product_id
        #
        #   @return [String, nil]
        optional :product_id, String

        # @!attribute product_tags
        #
        #   @return [Array<String>, nil]
        optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute recurring_commit_ids
        #
        #   @return [Array<String>, nil]
        optional :recurring_commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute recurring_credit_ids
        #
        #   @return [Array<String>, nil]
        optional :recurring_credit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil, recurring_credit_ids: nil)
        #   @param commit_ids [Array<String>]
        #   @param presentation_group_values [Hash{Symbol=>String, nil}]
        #   @param pricing_group_values [Hash{Symbol=>String}]
        #   @param product_id [String]
        #   @param product_tags [Array<String>]
        #   @param recurring_commit_ids [Array<String>]
        #   @param recurring_credit_ids [Array<String>]
      end

      class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute multiplier
        #
        #   @return [Float]
        required :multiplier, Float

        # @!attribute size
        #
        #   @return [Float, nil]
        optional :size, Float

        # @!method initialize(multiplier:, size: nil)
        #   @param multiplier [Float]
        #   @param size [Float]
      end

      # @see MetronomeSDK::Models::Override#overwrite_rate
      class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute rate_type
        #
        #   @return [Symbol, MetronomeSDK::Models::Override::OverwriteRate::RateType]
        required :rate_type, enum: -> { MetronomeSDK::Models::Override::OverwriteRate::RateType }

        # @!attribute credit_type
        #
        #   @return [MetronomeSDK::Models::CreditTypeData, nil]
        optional :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

        # @!attribute custom_rate
        #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
        #   processors.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :custom_rate, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

        # @!attribute is_prorated
        #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
        #   set to true.
        #
        #   @return [Boolean, nil]
        optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

        # @!attribute price
        #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
        #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #
        #   @return [Float, nil]
        optional :price, Float

        # @!attribute quantity
        #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #
        #   @return [Float, nil]
        optional :quantity, Float

        # @!attribute tiers
        #   Only set for TIERED rate_type.
        #
        #   @return [Array<MetronomeSDK::Models::Tier>, nil]
        optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::Tier] }

        # @!method initialize(rate_type:, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::Override::OverwriteRate} for more details.
        #
        #   @param rate_type [Symbol, MetronomeSDK::Models::Override::OverwriteRate::RateType]
        #
        #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
        #
        #   @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
        #   ...
        #
        #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
        #   ...
        #
        #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
        #   ...
        #
        #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #
        #   @param tiers [Array<MetronomeSDK::Models::Tier>] Only set for TIERED rate_type.

        # @see MetronomeSDK::Models::Override::OverwriteRate#rate_type
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          FLAT = :FLAT
          PERCENTAGE = :PERCENTAGE
          SUBSCRIPTION = :SUBSCRIPTION
          TIERED = :TIERED
          CUSTOM = :CUSTOM

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see MetronomeSDK::Models::Override#product
      class Product < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   @param id [String]
        #   @param name [String]
      end

      # @see MetronomeSDK::Models::Override#rate_type
      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        TIERED = :TIERED
        CUSTOM = :CUSTOM

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Models::Override#target
      module Target
        extend MetronomeSDK::Internal::Type::Enum

        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Models::Override#type
      module Type
        extend MetronomeSDK::Internal::Type::Enum

        OVERWRITE = :OVERWRITE
        MULTIPLIER = :MULTIPLIER
        TIERED = :TIERED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
