# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # override => {
    #   id: String,
    #   starting_at: Time,
    #   applicable_product_tags: -> { Metronome::ArrayOf[String] === _1 },
    #   credit_type: Metronome::Models::CreditTypeData,
    #   ending_before: Time,
    #   **_
    # }
    # ```
    class Override < Metronome::BaseModel
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
      #   @return [Array<String>]
      optional :applicable_product_tags, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :applicable_product_tags

      # @!attribute [r] credit_type
      #
      #   @return [Metronome::Models::CreditTypeData, nil]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!parse
      #   # @return [Metronome::Models::CreditTypeData]
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
      optional :entitled, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :entitled

      # @!attribute [r] is_commit_specific
      #
      #   @return [Boolean, nil]
      optional :is_commit_specific, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :is_commit_specific

      # @!attribute [r] is_prorated
      #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      #     set to true.
      #
      #   @return [Boolean, nil]
      optional :is_prorated, Metronome::BooleanModel

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
      #   @return [Array<Metronome::Models::Override::OverrideSpecifier>]
      optional :override_specifiers, -> { Metronome::ArrayOf[Metronome::Models::Override::OverrideSpecifier] }

      # @!parse
      #   # @return [Array<Metronome::Models::Override::OverrideSpecifier>]
      #   attr_writer :override_specifiers

      # @!attribute [r] override_tiers
      #
      #   @return [Array<Metronome::Models::Override::OverrideTier>]
      optional :override_tiers, -> { Metronome::ArrayOf[Metronome::Models::Override::OverrideTier] }

      # @!parse
      #   # @return [Array<Metronome::Models::Override::OverrideTier>]
      #   attr_writer :override_tiers

      # @!attribute [r] overwrite_rate
      #
      #   @return [Metronome::Models::Override::OverwriteRate, nil]
      optional :overwrite_rate, -> { Metronome::Models::Override::OverwriteRate }

      # @!parse
      #   # @return [Metronome::Models::Override::OverwriteRate]
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
      #   @return [Metronome::Models::Override::Product, nil]
      optional :product, -> { Metronome::Models::Override::Product }

      # @!parse
      #   # @return [Metronome::Models::Override::Product]
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
      #   @return [Symbol, Metronome::Models::Override::RateType, nil]
      optional :rate_type, enum: -> { Metronome::Models::Override::RateType }

      # @!parse
      #   # @return [Symbol, Metronome::Models::Override::RateType]
      #   attr_writer :rate_type

      # @!attribute [r] target
      #
      #   @return [Symbol, Metronome::Models::Override::Target, nil]
      optional :target, enum: -> { Metronome::Models::Override::Target }

      # @!parse
      #   # @return [Symbol, Metronome::Models::Override::Target]
      #   attr_writer :target

      # @!attribute [r] tiers
      #   Only set for TIERED rate_type.
      #
      #   @return [Array<Metronome::Models::Tier>]
      optional :tiers, -> { Metronome::ArrayOf[Metronome::Models::Tier] }

      # @!parse
      #   # @return [Array<Metronome::Models::Tier>]
      #   attr_writer :tiers

      # @!attribute [r] type
      #
      #   @return [Symbol, Metronome::Models::Override::Type, nil]
      optional :type, enum: -> { Metronome::Models::Override::Type }

      # @!parse
      #   # @return [Symbol, Metronome::Models::Override::Type]
      #   attr_writer :type

      # @!attribute [r] value
      #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
      #     processors.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :value, Metronome::HashOf[Metronome::Unknown]

      # @!parse
      #   # @return [Hash{Symbol=>Object}]
      #   attr_writer :value

      # @!parse
      #   # @param id [String]
      #   # @param starting_at [Time]
      #   # @param applicable_product_tags [Array<String>]
      #   # @param credit_type [Metronome::Models::CreditTypeData]
      #   # @param ending_before [Time]
      #   # @param entitled [Boolean]
      #   # @param is_commit_specific [Boolean]
      #   # @param is_prorated [Boolean]
      #   # @param multiplier [Float]
      #   # @param override_specifiers [Array<Metronome::Models::Override::OverrideSpecifier>]
      #   # @param override_tiers [Array<Metronome::Models::Override::OverrideTier>]
      #   # @param overwrite_rate [Metronome::Models::Override::OverwriteRate]
      #   # @param price [Float]
      #   # @param priority [Float]
      #   # @param product [Metronome::Models::Override::Product]
      #   # @param quantity [Float]
      #   # @param rate_type [Symbol, Metronome::Models::Override::RateType]
      #   # @param target [Symbol, Metronome::Models::Override::Target]
      #   # @param tiers [Array<Metronome::Models::Tier>]
      #   # @param type [Symbol, Metronome::Models::Override::Type]
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

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # override_specifier => {
      #   commit_ids: -> { Metronome::ArrayOf[String] === _1 },
      #   presentation_group_values: -> { Metronome::HashOf[String] === _1 },
      #   pricing_group_values: -> { Metronome::HashOf[String] === _1 },
      #   product_id: String,
      #   product_tags: -> { Metronome::ArrayOf[String] === _1 }
      # }
      # ```
      class OverrideSpecifier < Metronome::BaseModel
        # @!attribute [r] commit_ids
        #
        #   @return [Array<String>]
        optional :commit_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :commit_ids

        # @!attribute [r] presentation_group_values
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :presentation_group_values, Metronome::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}, nil]
        #   attr_writer :presentation_group_values

        # @!attribute [r] pricing_group_values
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :pricing_group_values, Metronome::HashOf[String]

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
        #   @return [Array<String>]
        optional :product_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :product_tags

        # @!parse
        #   # @param commit_ids [Array<String>]
        #   # @param presentation_group_values [Hash{Symbol=>String}, nil]
        #   # @param pricing_group_values [Hash{Symbol=>String}]
        #   # @param product_id [String]
        #   # @param product_tags [Array<String>]
        #   #
        #   def initialize(
        #     commit_ids: nil,
        #     presentation_group_values: nil,
        #     pricing_group_values: nil,
        #     product_id: nil,
        #     product_tags: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      # ```ruby
      # override_tier => {
      #   multiplier: Float,
      #   size: Float
      # }
      # ```
      class OverrideTier < Metronome::BaseModel
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

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      # ```ruby
      # overwrite_rate => {
      #   rate_type: Metronome::Models::Override::OverwriteRate::RateType,
      #   credit_type: Metronome::Models::CreditTypeData,
      #   custom_rate: -> { Metronome::HashOf[Metronome::Unknown] === _1 },
      #   is_prorated: Metronome::BooleanModel,
      #   price: Float,
      #   **_
      # }
      # ```
      class OverwriteRate < Metronome::BaseModel
        # @!attribute rate_type
        #
        #   @return [Symbol, Metronome::Models::Override::OverwriteRate::RateType]
        required :rate_type, enum: -> { Metronome::Models::Override::OverwriteRate::RateType }

        # @!attribute [r] credit_type
        #
        #   @return [Metronome::Models::CreditTypeData, nil]
        optional :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!parse
        #   # @return [Metronome::Models::CreditTypeData]
        #   attr_writer :credit_type

        # @!attribute [r] custom_rate
        #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
        #     processors.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :custom_rate, Metronome::HashOf[Metronome::Unknown]

        # @!parse
        #   # @return [Hash{Symbol=>Object}]
        #   attr_writer :custom_rate

        # @!attribute [r] is_prorated
        #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
        #     set to true.
        #
        #   @return [Boolean, nil]
        optional :is_prorated, Metronome::BooleanModel

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
        #   @return [Array<Metronome::Models::Tier>]
        optional :tiers, -> { Metronome::ArrayOf[Metronome::Models::Tier] }

        # @!parse
        #   # @return [Array<Metronome::Models::Tier>]
        #   attr_writer :tiers

        # @!parse
        #   # @param rate_type [Symbol, Metronome::Models::Override::OverwriteRate::RateType]
        #   # @param credit_type [Metronome::Models::CreditTypeData]
        #   # @param custom_rate [Hash{Symbol=>Object}]
        #   # @param is_prorated [Boolean]
        #   # @param price [Float]
        #   # @param quantity [Float]
        #   # @param tiers [Array<Metronome::Models::Tier>]
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

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
        class RateType < Metronome::Enum
          FLAT = :FLAT
          PERCENTAGE = :PERCENTAGE
          SUBSCRIPTION = :SUBSCRIPTION
          TIERED = :TIERED
          CUSTOM = :CUSTOM

          finalize!
        end
      end

      # @example
      # ```ruby
      # product => {
      #   id: String,
      #   name: String
      # }
      # ```
      class Product < Metronome::BaseModel
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

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

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
      class RateType < Metronome::Enum
        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        TIERED = :TIERED
        CUSTOM = :CUSTOM

        finalize!
      end

      # @example
      # ```ruby
      # case target
      # in :COMMIT_RATE
      #   # ...
      # in :LIST_RATE
      #   # ...
      # end
      # ```
      class Target < Metronome::Enum
        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        finalize!
      end

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
      class Type < Metronome::Enum
        OVERWRITE = :OVERWRITE
        MULTIPLIER = :MULTIPLIER
        TIERED = :TIERED

        finalize!
      end
    end
  end
end
