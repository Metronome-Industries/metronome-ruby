# frozen_string_literal: true

module Metronome
  module Models
    class Override < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] starting_at
      #   @return [Time]
      required :starting_at, Time

      # @!attribute [rw] applicable_product_tags
      #   @return [Array<String>]
      optional :applicable_product_tags, Metronome::ArrayOf.new(String)

      # @!attribute [rw] credit_type
      #   @return [Metronome::Models::CreditTypeData]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!attribute [rw] ending_before
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute [rw] entitled
      #   @return [Boolean]
      optional :entitled, Metronome::BooleanModel

      # @!attribute [rw] is_prorated
      #   Default proration configuration. Only valid for SUBSCRIPTION rate_type.
      #   @return [Boolean]
      optional :is_prorated, Metronome::BooleanModel

      # @!attribute [rw] multiplier
      #   @return [Float]
      optional :multiplier, Float

      # @!attribute [rw] override_specifiers
      #   @return [Array<Metronome::Models::Override::OverrideSpecifier>]
      optional :override_specifiers,
               Metronome::ArrayOf.new(-> { Metronome::Models::Override::OverrideSpecifier })

      # @!attribute [rw] override_tiers
      #   @return [Array<Metronome::Models::Override::OverrideTier>]
      optional :override_tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Override::OverrideTier })

      # @!attribute [rw] overwrite_rate
      #   @return [Metronome::Models::Override::OverwriteRate]
      optional :overwrite_rate, -> { Metronome::Models::Override::OverwriteRate }

      # @!attribute [rw] price
      #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #   @return [Float]
      optional :price, Float

      # @!attribute [rw] priority
      #   @return [Float]
      optional :priority, Float

      # @!attribute [rw] product
      #   @return [Metronome::Models::Override::Product]
      optional :product, -> { Metronome::Models::Override::Product }

      # @!attribute [rw] quantity
      #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #   @return [Float]
      optional :quantity, Float

      # @!attribute [rw] rate_type
      #   @return [Symbol, Metronome::Models::Override::RateType]
      optional :rate_type, enum: -> { Metronome::Models::Override::RateType }

      # @!attribute [rw] tiers
      #   Only set for TIERED rate_type.
      #   @return [Array<Metronome::Models::Tier>]
      optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

      # @!attribute [rw] type
      #   @return [Symbol, Metronome::Models::Override::Type]
      optional :type, enum: -> { Metronome::Models::Override::Type }

      # @!attribute [rw] value
      #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
      #   @return [Hash]
      optional :value, Hash

      class OverrideSpecifier < BaseModel
        # @!attribute [rw] presentation_group_values
        #   @return [Hash]
        optional :presentation_group_values, Hash

        # @!attribute [rw] pricing_group_values
        #   @return [Hash]
        optional :pricing_group_values, Hash

        # @!attribute [rw] product_id
        #   @return [String]
        optional :product_id, String

        # @!attribute [rw] product_tags
        #   @return [Array<String>]
        optional :product_tags, Metronome::ArrayOf.new(String)

        # Create a new instance of OverrideSpecifier from a Hash of raw data.
        #
        # @overload initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
        # @param presentation_group_values [Hash]
        # @param pricing_group_values [Hash]
        # @param product_id [String]
        # @param product_tags [Array<String>]
        def initialize(data = {})
          super
        end
      end

      class OverrideTier < BaseModel
        # @!attribute [rw] multiplier
        #   @return [Float]
        required :multiplier, Float

        # @!attribute [rw] size
        #   @return [Float]
        optional :size, Float

        # Create a new instance of OverrideTier from a Hash of raw data.
        #
        # @overload initialize(multiplier: nil, size: nil)
        # @param multiplier [Float]
        # @param size [Float]
        def initialize(data = {})
          super
        end
      end

      class OverwriteRate < BaseModel
        # @!attribute [rw] rate_type
        #   @return [Symbol, Metronome::Models::Override::OverwriteRate::RateType]
        required :rate_type, enum: -> { Metronome::Models::Override::OverwriteRate::RateType }

        # @!attribute [rw] credit_type
        #   @return [Metronome::Models::CreditTypeData]
        optional :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute [rw] custom_rate
        #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
        #   @return [Hash]
        optional :custom_rate, Hash

        # @!attribute [rw] is_prorated
        #   Default proration configuration. Only valid for SUBSCRIPTION rate_type.
        #   @return [Boolean]
        optional :is_prorated, Metronome::BooleanModel

        # @!attribute [rw] price
        #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #   @return [Float]
        optional :price, Float

        # @!attribute [rw] quantity
        #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #   @return [Float]
        optional :quantity, Float

        # @!attribute [rw] tiers
        #   Only set for TIERED rate_type.
        #   @return [Array<Metronome::Models::Tier>]
        optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

        class RateType < Metronome::Enum
          FLAT = :FLAT
          PERCENTAGE = :PERCENTAGE
          SUBSCRIPTION = :SUBSCRIPTION
          TIERED = :TIERED
          CUSTOM = :CUSTOM
        end

        # Create a new instance of OverwriteRate from a Hash of raw data.
        #
        # @overload initialize(rate_type: nil, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
        # @param rate_type [String]
        # @param credit_type [Object]
        # @param custom_rate [Hash] Only set for CUSTOM rate_type. This field is interpreted by custom rate
        #   processors.
        # @param is_prorated [Hash] Default proration configuration. Only valid for SUBSCRIPTION rate_type.
        # @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
        #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        # @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        # @param tiers [Array<Object>] Only set for TIERED rate_type.
        def initialize(data = {})
          super
        end
      end

      class Product < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # Create a new instance of Product from a Hash of raw data.
        #
        # @overload initialize(id: nil, name: nil)
        # @param id [String]
        # @param name [String]
        def initialize(data = {})
          super
        end
      end

      class RateType < Metronome::Enum
        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        TIERED = :TIERED
        CUSTOM = :CUSTOM
      end

      class Type < Metronome::Enum
        OVERWRITE = :OVERWRITE
        MULTIPLIER = :MULTIPLIER
        TIERED = :TIERED
      end

      # Create a new instance of Override from a Hash of raw data.
      #
      # @overload initialize(id: nil, starting_at: nil, applicable_product_tags: nil, credit_type: nil, ending_before: nil, entitled: nil, is_prorated: nil, multiplier: nil, override_specifiers: nil, override_tiers: nil, overwrite_rate: nil, price: nil, priority: nil, product: nil, quantity: nil, rate_type: nil, tiers: nil, type: nil, value: nil)
      # @param id [String]
      # @param starting_at [String]
      # @param applicable_product_tags [Array<String>]
      # @param credit_type [Object]
      # @param ending_before [String]
      # @param entitled [Hash]
      # @param is_prorated [Hash] Default proration configuration. Only valid for SUBSCRIPTION rate_type.
      # @param multiplier [Float]
      # @param override_specifiers [Array<Object>]
      # @param override_tiers [Array<Object>]
      # @param overwrite_rate [Object]
      # @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      # @param priority [Float]
      # @param product [Object]
      # @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      # @param rate_type [String]
      # @param tiers [Array<Object>] Only set for TIERED rate_type.
      # @param type [String]
      # @param value [Hash] Only set for CUSTOM rate_type. This field is interpreted by custom rate
      #   processors.
      def initialize(data = {})
        super
      end
    end
  end
end
