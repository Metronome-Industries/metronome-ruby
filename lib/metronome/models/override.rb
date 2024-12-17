# frozen_string_literal: true

module Metronome
  module Models
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
      optional :applicable_product_tags, Metronome::ArrayOf.new(String)

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
      optional :override_specifiers,
               Metronome::ArrayOf.new(-> { Metronome::Models::Override::OverrideSpecifier })

      # @!attribute override_tiers
      #
      #   @return [Array<Metronome::Models::Override::OverrideTier>]
      optional :override_tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Override::OverrideTier })

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
      optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

      # @!attribute type
      #
      #   @return [Symbol, Metronome::Models::Override::Type]
      optional :type, enum: -> { Metronome::Models::Override::Type }

      # @!attribute value
      #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
      #
      #   @return [Hash]
      optional :value, Hash

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param starting_at [String]
      #   #
      #   # @param applicable_product_tags [Array<String>, nil]
      #   #
      #   # @param credit_type [Metronome::Models::CreditTypeData, nil]
      #   #
      #   # @param ending_before [String, nil]
      #   #
      #   # @param entitled [Boolean, nil]
      #   #
      #   # @param is_commit_specific [Boolean, nil]
      #   #
      #   # @param is_prorated [Boolean, nil] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      #   #   set to true.
      #   #
      #   # @param multiplier [Float, nil]
      #   #
      #   # @param override_specifiers [Array<Metronome::Models::Override::OverrideSpecifier>, nil]
      #   #
      #   # @param override_tiers [Array<Metronome::Models::Override::OverrideTier>, nil]
      #   #
      #   # @param overwrite_rate [Metronome::Models::Override::OverwriteRate, nil]
      #   #
      #   # @param price [Float, nil] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      #   #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #   #
      #   # @param priority [Float, nil]
      #   #
      #   # @param product [Metronome::Models::Override::Product, nil]
      #   #
      #   # @param quantity [Float, nil] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #   #
      #   # @param rate_type [String, nil]
      #   #
      #   # @param target [String, nil]
      #   #
      #   # @param tiers [Array<Metronome::Models::Tier>, nil] Only set for TIERED rate_type.
      #   #
      #   # @param type [String, nil]
      #   #
      #   # @param value [Hash, nil] Only set for CUSTOM rate_type. This field is interpreted by custom rate
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
      #     value: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class OverrideSpecifier < Metronome::BaseModel
        # @!attribute commit_ids
        #
        #   @return [Array<String>]
        optional :commit_ids, Metronome::ArrayOf.new(String)

        # @!attribute presentation_group_values
        #
        #   @return [Hash]
        optional :presentation_group_values, Hash

        # @!attribute pricing_group_values
        #
        #   @return [Hash]
        optional :pricing_group_values, Hash

        # @!attribute product_id
        #
        #   @return [String]
        optional :product_id, String

        # @!attribute product_tags
        #
        #   @return [Array<String>]
        optional :product_tags, Metronome::ArrayOf.new(String)

        # @!parse
        #   # @param commit_ids [Array<String>, nil]
        #   # @param presentation_group_values [Hash, nil]
        #   # @param pricing_group_values [Hash, nil]
        #   # @param product_id [String, nil]
        #   # @param product_tags [Array<String>, nil]
        #   #
        #   def initialize(
        #     commit_ids: nil,
        #     presentation_group_values: nil,
        #     pricing_group_values: nil,
        #     product_id: nil,
        #     product_tags: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

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
        #   # @param size [Float, nil]
        #   #
        #   def initialize(multiplier:, size: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

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
        #   @return [Hash]
        optional :custom_rate, Hash

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
        optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

        # @!parse
        #   # @param rate_type [String]
        #   #
        #   # @param credit_type [Metronome::Models::CreditTypeData, nil]
        #   #
        #   # @param custom_rate [Hash, nil] Only set for CUSTOM rate_type. This field is interpreted by custom rate
        #   #   processors.
        #   #
        #   # @param is_prorated [Boolean, nil] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
        #   #   set to true.
        #   #
        #   # @param price [Float, nil] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
        #   #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #   #
        #   # @param quantity [Float, nil] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #   #
        #   # @param tiers [Array<Metronome::Models::Tier>, nil] Only set for TIERED rate_type.
        #   #
        #   def initialize(rate_type:, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
        end
      end

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
        #   def initialize(id:, name:) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      #
      # ```ruby
      # case enum
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
      end

      # @example
      #
      # ```ruby
      # case enum
      # in :COMMIT_RATE
      #   # ...
      # in :LIST_RATE
      #   # ...
      # end
      # ```
      class Target < Metronome::Enum
        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE
      end

      # @example
      #
      # ```ruby
      # case enum
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
      end
    end
  end
end
