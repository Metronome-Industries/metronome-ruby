# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
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

      # @!attribute applicable_product_tags
      #
      #   @return [Array<String>]
      optional :applicable_product_tags, Metronome::ArrayOf[String]

      # @!attribute credit_type
      #
      #   @return [Metronome::Models::CreditTypeData]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!attribute ending_before
      #
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute entitled
      #
      #   @return [Boolean]
      optional :entitled, Metronome::BooleanModel

      # @!attribute is_commit_specific
      #
      #   @return [Boolean]
      optional :is_commit_specific, Metronome::BooleanModel

      # @!attribute is_prorated
      #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true.
      #
      #   @return [Boolean]
      optional :is_prorated, Metronome::BooleanModel

      # @!attribute multiplier
      #
      #   @return [Float]
      optional :multiplier, Float

      # @!attribute override_specifiers
      #
      #   @return [Array<Metronome::Models::Override::OverrideSpecifier>]
      optional :override_specifiers, Metronome::ArrayOf[-> { Metronome::Models::Override::OverrideSpecifier }]

      # @!attribute override_tiers
      #
      #   @return [Array<Metronome::Models::Override::OverrideTier>]
      optional :override_tiers, Metronome::ArrayOf[-> { Metronome::Models::Override::OverrideTier }]

      # @!attribute overwrite_rate
      #
      #   @return [Metronome::Models::Override::OverwriteRate]
      optional :overwrite_rate, -> { Metronome::Models::Override::OverwriteRate }

      # @!attribute price
      #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #
      #   @return [Float]
      optional :price, Float

      # @!attribute priority
      #
      #   @return [Float]
      optional :priority, Float

      # @!attribute product
      #
      #   @return [Metronome::Models::Override::Product]
      optional :product, -> { Metronome::Models::Override::Product }

      # @!attribute quantity
      #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #
      #   @return [Float]
      optional :quantity, Float

      # @!attribute rate_type
      #
      #   @return [Symbol, Metronome::Models::Override::RateType]
      optional :rate_type, enum: -> { Metronome::Models::Override::RateType }

      # @!attribute target
      #
      #   @return [Symbol, Metronome::Models::Override::Target]
      optional :target, enum: -> { Metronome::Models::Override::Target }

      # @!attribute tiers
      #   Only set for TIERED rate_type.
      #
      #   @return [Array<Metronome::Models::Tier>]
      optional :tiers, Metronome::ArrayOf[-> { Metronome::Models::Tier }]

      # @!attribute type
      #
      #   @return [Symbol, Metronome::Models::Override::Type]
      optional :type, enum: -> { Metronome::Models::Override::Type }

      # @!attribute value
      #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
      #
      #   @return [Hash{Symbol => Object}]
      optional :value, Metronome::HashOf[Metronome::Unknown]

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param starting_at [String]
      #   #
      #   # @param applicable_product_tags [Array<String>]
      #   #
      #   # @param credit_type [Metronome::Models::CreditTypeData]
      #   #
      #   # @param ending_before [String]
      #   #
      #   # @param entitled [Boolean]
      #   #
      #   # @param is_commit_specific [Boolean]
      #   #
      #   # @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      #   #   set to true.
      #   #
      #   # @param multiplier [Float]
      #   #
      #   # @param override_specifiers [Array<Metronome::Models::Override::OverrideSpecifier>]
      #   #
      #   # @param override_tiers [Array<Metronome::Models::Override::OverrideTier>]
      #   #
      #   # @param overwrite_rate [Metronome::Models::Override::OverwriteRate]
      #   #
      #   # @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      #   #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #   #
      #   # @param priority [Float]
      #   #
      #   # @param product [Metronome::Models::Override::Product]
      #   #
      #   # @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #   #
      #   # @param rate_type [String]
      #   #
      #   # @param target [String]
      #   #
      #   # @param tiers [Array<Metronome::Models::Tier>] Only set for TIERED rate_type.
      #   #
      #   # @param type [String]
      #   #
      #   # @param value [Hash{Symbol => Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate
      #   #   processors.
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
      #
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
        # @!attribute commit_ids
        #
        #   @return [Array<String>]
        optional :commit_ids, Metronome::ArrayOf[String]

        # @!attribute presentation_group_values
        #
        #   @return [Hash{Symbol => String, nil}]
        optional :presentation_group_values, Metronome::HashOf[String]

        # @!attribute pricing_group_values
        #
        #   @return [Hash{Symbol => String}]
        optional :pricing_group_values, Metronome::HashOf[String]

        # @!attribute product_id
        #
        #   @return [String]
        optional :product_id, String

        # @!attribute product_tags
        #
        #   @return [Array<String>]
        optional :product_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @param commit_ids [Array<String>]
        #   # @param presentation_group_values [Hash{Symbol => String, nil}]
        #   # @param pricing_group_values [Hash{Symbol => String}]
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
      #
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

        # @!attribute size
        #
        #   @return [Float]
        optional :size, Float

        # @!parse
        #   # @param multiplier [Float]
        #   # @param size [Float]
        #   #
        #   def initialize(multiplier:, size: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      #
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

        # @!attribute credit_type
        #
        #   @return [Metronome::Models::CreditTypeData]
        optional :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute custom_rate
        #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
        #
        #   @return [Hash{Symbol => Object}]
        optional :custom_rate, Metronome::HashOf[Metronome::Unknown]

        # @!attribute is_prorated
        #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true.
        #
        #   @return [Boolean]
        optional :is_prorated, Metronome::BooleanModel

        # @!attribute price
        #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #
        #   @return [Float]
        optional :price, Float

        # @!attribute quantity
        #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #
        #   @return [Float]
        optional :quantity, Float

        # @!attribute tiers
        #   Only set for TIERED rate_type.
        #
        #   @return [Array<Metronome::Models::Tier>]
        optional :tiers, Metronome::ArrayOf[-> { Metronome::Models::Tier }]

        # @!parse
        #   # @param rate_type [String]
        #   #
        #   # @param credit_type [Metronome::Models::CreditTypeData]
        #   #
        #   # @param custom_rate [Hash{Symbol => Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate
        #   #   processors.
        #   #
        #   # @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
        #   #   set to true.
        #   #
        #   # @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
        #   #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #   #
        #   # @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #   #
        #   # @param tiers [Array<Metronome::Models::Tier>] Only set for TIERED rate_type.
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
        #
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
      #
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
      #
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
      #
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
      #
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
