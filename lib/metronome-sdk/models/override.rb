# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Override < MetronomeSDK::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute starting_at
      #
      #   @return [Time]
      required :starting_at, Time

      # @!attribute [r] applicable_product_tags
      #
      #   @return [Array<String>, nil]
      optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :applicable_product_tags

      # @!attribute [r] credit_type
      #
      #   @return [MetronomeSDK::Models::CreditTypeData, nil]
      optional :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

      # @!parse
      #   # @return [MetronomeSDK::Models::CreditTypeData]
      #   attr_writer :credit_type

      # @!attribute [r] ending_before
      #
      #   @return [Time, nil]
      optional :ending_before, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :ending_before

      # @!attribute [r] entitled
      #
      #   @return [Boolean, nil]
      optional :entitled, MetronomeSDK::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :entitled

      # @!attribute [r] is_commit_specific
      #
      #   @return [Boolean, nil]
      optional :is_commit_specific, MetronomeSDK::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :is_commit_specific

      # @!attribute [r] is_prorated
      #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      #     set to true.
      #
      #   @return [Boolean, nil]
      optional :is_prorated, MetronomeSDK::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :is_prorated

      # @!attribute [r] multiplier
      #
      #   @return [Float, nil]
      optional :multiplier, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :multiplier

      # @!attribute [r] override_specifiers
      #
      #   @return [Array<MetronomeSDK::Models::Override::OverrideSpecifier>, nil]
      optional :override_specifiers,
               -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Override::OverrideSpecifier] }

      # @!parse
      #   # @return [Array<MetronomeSDK::Models::Override::OverrideSpecifier>]
      #   attr_writer :override_specifiers

      # @!attribute [r] override_tiers
      #
      #   @return [Array<MetronomeSDK::Models::Override::OverrideTier>, nil]
      optional :override_tiers, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Override::OverrideTier] }

      # @!parse
      #   # @return [Array<MetronomeSDK::Models::Override::OverrideTier>]
      #   attr_writer :override_tiers

      # @!attribute [r] overwrite_rate
      #
      #   @return [MetronomeSDK::Models::Override::OverwriteRate, nil]
      optional :overwrite_rate, -> { MetronomeSDK::Models::Override::OverwriteRate }

      # @!parse
      #   # @return [MetronomeSDK::Models::Override::OverwriteRate]
      #   attr_writer :overwrite_rate

      # @!attribute [r] price
      #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #
      #   @return [Float, nil]
      optional :price, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :price

      # @!attribute [r] priority
      #
      #   @return [Float, nil]
      optional :priority, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :priority

      # @!attribute [r] product
      #
      #   @return [MetronomeSDK::Models::Override::Product, nil]
      optional :product, -> { MetronomeSDK::Models::Override::Product }

      # @!parse
      #   # @return [MetronomeSDK::Models::Override::Product]
      #   attr_writer :product

      # @!attribute [r] quantity
      #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #
      #   @return [Float, nil]
      optional :quantity, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :quantity

      # @!attribute [r] rate_type
      #
      #   @return [Symbol, MetronomeSDK::Models::Override::RateType, nil]
      optional :rate_type, enum: -> { MetronomeSDK::Models::Override::RateType }

      # @!parse
      #   # @return [Symbol, MetronomeSDK::Models::Override::RateType]
      #   attr_writer :rate_type

      # @!attribute [r] target
      #
      #   @return [Symbol, MetronomeSDK::Models::Override::Target, nil]
      optional :target, enum: -> { MetronomeSDK::Models::Override::Target }

      # @!parse
      #   # @return [Symbol, MetronomeSDK::Models::Override::Target]
      #   attr_writer :target

      # @!attribute [r] tiers
      #   Only set for TIERED rate_type.
      #
      #   @return [Array<MetronomeSDK::Models::Tier>, nil]
      optional :tiers, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Tier] }

      # @!parse
      #   # @return [Array<MetronomeSDK::Models::Tier>]
      #   attr_writer :tiers

      # @!attribute [r] type
      #
      #   @return [Symbol, MetronomeSDK::Models::Override::Type, nil]
      optional :type, enum: -> { MetronomeSDK::Models::Override::Type }

      # @!parse
      #   # @return [Symbol, MetronomeSDK::Models::Override::Type]
      #   attr_writer :type

      # @!attribute [r] value
      #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
      #     processors.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :value, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

      # @!parse
      #   # @return [Hash{Symbol=>Object}]
      #   attr_writer :value

      # @!parse
      #   # @param id [String]
      #   # @param starting_at [Time]
      #   # @param applicable_product_tags [Array<String>]
      #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
      #   # @param ending_before [Time]
      #   # @param entitled [Boolean]
      #   # @param is_commit_specific [Boolean]
      #   # @param is_prorated [Boolean]
      #   # @param multiplier [Float]
      #   # @param override_specifiers [Array<MetronomeSDK::Models::Override::OverrideSpecifier>]
      #   # @param override_tiers [Array<MetronomeSDK::Models::Override::OverrideTier>]
      #   # @param overwrite_rate [MetronomeSDK::Models::Override::OverwriteRate]
      #   # @param price [Float]
      #   # @param priority [Float]
      #   # @param product [MetronomeSDK::Models::Override::Product]
      #   # @param quantity [Float]
      #   # @param rate_type [Symbol, MetronomeSDK::Models::Override::RateType]
      #   # @param target [Symbol, MetronomeSDK::Models::Override::Target]
      #   # @param tiers [Array<MetronomeSDK::Models::Tier>]
      #   # @param type [Symbol, MetronomeSDK::Models::Override::Type]
      #   # @param value [Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     id:,
      #     starting_at:,
      #     applicable_product_tags: nil,
      #     credit_type: nil,
      #     ending_before: nil,
      #     entitled: nil,
      #     is_commit_specific: nil,
      #     is_prorated: nil,
      #     multiplier: nil,
      #     override_specifiers: nil,
      #     override_tiers: nil,
      #     overwrite_rate: nil,
      #     price: nil,
      #     priority: nil,
      #     product: nil,
      #     quantity: nil,
      #     rate_type: nil,
      #     target: nil,
      #     tiers: nil,
      #     type: nil,
      #     value: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

      class OverrideSpecifier < MetronomeSDK::BaseModel
        # @!attribute [r] commit_ids
        #
        #   @return [Array<String>, nil]
        optional :commit_ids, MetronomeSDK::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :commit_ids

        # @!attribute [r] presentation_group_values
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :presentation_group_values, MetronomeSDK::HashOf[String, nil?: true]

        # @!parse
        #   # @return [Hash{Symbol=>String, nil}]
        #   attr_writer :presentation_group_values

        # @!attribute [r] pricing_group_values
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :pricing_group_values, MetronomeSDK::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :pricing_group_values

        # @!attribute [r] product_id
        #
        #   @return [String, nil]
        optional :product_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :product_id

        # @!attribute [r] product_tags
        #
        #   @return [Array<String>, nil]
        optional :product_tags, MetronomeSDK::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :product_tags

        # @!attribute [r] recurring_commit_ids
        #
        #   @return [Array<String>, nil]
        optional :recurring_commit_ids, MetronomeSDK::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :recurring_commit_ids

        # @!attribute [r] recurring_credit_ids
        #
        #   @return [Array<String>, nil]
        optional :recurring_credit_ids, MetronomeSDK::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :recurring_credit_ids

        # @!parse
        #   # @param commit_ids [Array<String>]
        #   # @param presentation_group_values [Hash{Symbol=>String, nil}]
        #   # @param pricing_group_values [Hash{Symbol=>String}]
        #   # @param product_id [String]
        #   # @param product_tags [Array<String>]
        #   # @param recurring_commit_ids [Array<String>]
        #   # @param recurring_credit_ids [Array<String>]
        #   #
        #   def initialize(
        #     commit_ids: nil,
        #     presentation_group_values: nil,
        #     pricing_group_values: nil,
        #     product_id: nil,
        #     product_tags: nil,
        #     recurring_commit_ids: nil,
        #     recurring_credit_ids: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end

      class OverrideTier < MetronomeSDK::BaseModel
        # @!attribute multiplier
        #
        #   @return [Float]
        required :multiplier, Float

        # @!attribute [r] size
        #
        #   @return [Float, nil]
        optional :size, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :size

        # @!parse
        #   # @param multiplier [Float]
        #   # @param size [Float]
        #   #
        #   def initialize(multiplier:, size: nil, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end

      class OverwriteRate < MetronomeSDK::BaseModel
        # @!attribute rate_type
        #
        #   @return [Symbol, MetronomeSDK::Models::Override::OverwriteRate::RateType]
        required :rate_type, enum: -> { MetronomeSDK::Models::Override::OverwriteRate::RateType }

        # @!attribute [r] credit_type
        #
        #   @return [MetronomeSDK::Models::CreditTypeData, nil]
        optional :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

        # @!parse
        #   # @return [MetronomeSDK::Models::CreditTypeData]
        #   attr_writer :credit_type

        # @!attribute [r] custom_rate
        #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
        #     processors.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :custom_rate, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

        # @!parse
        #   # @return [Hash{Symbol=>Object}]
        #   attr_writer :custom_rate

        # @!attribute [r] is_prorated
        #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
        #     set to true.
        #
        #   @return [Boolean, nil]
        optional :is_prorated, MetronomeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :is_prorated

        # @!attribute [r] price
        #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
        #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #
        #   @return [Float, nil]
        optional :price, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :price

        # @!attribute [r] quantity
        #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #
        #   @return [Float, nil]
        optional :quantity, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :quantity

        # @!attribute [r] tiers
        #   Only set for TIERED rate_type.
        #
        #   @return [Array<MetronomeSDK::Models::Tier>, nil]
        optional :tiers, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Tier] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::Tier>]
        #   attr_writer :tiers

        # @!parse
        #   # @param rate_type [Symbol, MetronomeSDK::Models::Override::OverwriteRate::RateType]
        #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
        #   # @param custom_rate [Hash{Symbol=>Object}]
        #   # @param is_prorated [Boolean]
        #   # @param price [Float]
        #   # @param quantity [Float]
        #   # @param tiers [Array<MetronomeSDK::Models::Tier>]
        #   #
        #   def initialize(
        #     rate_type:,
        #     credit_type: nil,
        #     custom_rate: nil,
        #     is_prorated: nil,
        #     price: nil,
        #     quantity: nil,
        #     tiers: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case rate_type
        # in :FLAT
        #   # ...
        # in :PERCENTAGE
        #   # ...
        # in :SUBSCRIPTION
        #   # ...
        # in :TIERED
        #   # ...
        # in :CUSTOM
        #   # ...
        # end
        # ```
        class RateType < MetronomeSDK::Enum
          FLAT = :FLAT
          PERCENTAGE = :PERCENTAGE
          SUBSCRIPTION = :SUBSCRIPTION
          TIERED = :TIERED
          CUSTOM = :CUSTOM

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class Product < MetronomeSDK::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # @param id [String]
        #   # @param name [String]
        #   #
        #   def initialize(id:, name:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case rate_type
      # in :FLAT
      #   # ...
      # in :PERCENTAGE
      #   # ...
      # in :SUBSCRIPTION
      #   # ...
      # in :TIERED
      #   # ...
      # in :CUSTOM
      #   # ...
      # end
      # ```
      class RateType < MetronomeSDK::Enum
        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        TIERED = :TIERED
        CUSTOM = :CUSTOM

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case target
      # in :COMMIT_RATE
      #   # ...
      # in :LIST_RATE
      #   # ...
      # end
      # ```
      class Target < MetronomeSDK::Enum
        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case type
      # in :OVERWRITE
      #   # ...
      # in :MULTIPLIER
      #   # ...
      # in :TIERED
      #   # ...
      # end
      # ```
      class Type < MetronomeSDK::Enum
        OVERWRITE = :OVERWRITE
        MULTIPLIER = :MULTIPLIER
        TIERED = :TIERED

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
