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

        # @!parse
        #   # Create a new instance of OverrideSpecifier from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Hash, nil] :presentation_group_values
        #   #   @option data [Hash, nil] :pricing_group_values
        #   #   @option data [String, nil] :product_id
        #   #   @option data [Array<String>, nil] :product_tags
        #   def initialize(data = {}) = super
      end

      class OverrideTier < BaseModel
        # @!attribute [rw] multiplier
        #   @return [Float]
        required :multiplier, Float

        # @!attribute [rw] size
        #   @return [Float]
        optional :size, Float

        # @!parse
        #   # Create a new instance of OverrideTier from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Float] :multiplier
        #   #   @option data [Float, nil] :size
        #   def initialize(data = {}) = super
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

        # @!parse
        #   # Create a new instance of OverwriteRate from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :rate_type
        #   #   @option data [Object, nil] :credit_type
        #   #   @option data [Hash, nil] :custom_rate Only set for CUSTOM rate_type. This field is interpreted by custom rate
        #   #     processors.
        #   #   @option data [Hash, nil] :is_prorated Default proration configuration. Only valid for SUBSCRIPTION rate_type.
        #   #   @option data [Float, nil] :price Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
        #   #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #   #   @option data [Float, nil] :quantity Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #   #   @option data [Array<Object>, nil] :tiers Only set for TIERED rate_type.
        #   def initialize(data = {}) = super
      end

      class Product < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String, api_name: :name

        # @!parse
        #   # Create a new instance of Product from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [String] :name
        #   def initialize(data = {}) = super
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

      # @!parse
      #   # Create a new instance of Override from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :starting_at
      #   #   @option data [Array<String>, nil] :applicable_product_tags
      #   #   @option data [Object, nil] :credit_type
      #   #   @option data [String, nil] :ending_before
      #   #   @option data [Hash, nil] :entitled
      #   #   @option data [Hash, nil] :is_prorated Default proration configuration. Only valid for SUBSCRIPTION rate_type.
      #   #   @option data [Float, nil] :multiplier
      #   #   @option data [Array<Object>, nil] :override_specifiers
      #   #   @option data [Array<Object>, nil] :override_tiers
      #   #   @option data [Object, nil] :overwrite_rate
      #   #   @option data [Float, nil] :price Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      #   #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #   #   @option data [Float, nil] :priority
      #   #   @option data [Object, nil] :product
      #   #   @option data [Float, nil] :quantity Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #   #   @option data [String, nil] :rate_type
      #   #   @option data [Array<Object>, nil] :tiers Only set for TIERED rate_type.
      #   #   @option data [String, nil] :type
      #   #   @option data [Hash, nil] :value Only set for CUSTOM rate_type. This field is interpreted by custom rate
      #   #     processors.
      #   def initialize(data = {}) = super
    end
  end
end
