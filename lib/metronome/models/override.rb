# frozen_string_literal: true

module Metronome
  module Models
    class Override < Metronome::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute starting_at
      #   @return [Time]
      required :starting_at, Time

      # @!attribute applicable_product_tags
      #   @return [Array<String>]
      optional :applicable_product_tags, Metronome::ArrayOf.new(String)

      # @!attribute credit_type
      #   @return [Metronome::Models::CreditTypeData]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!attribute ending_before
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute entitled
      #   @return [Boolean]
      optional :entitled, Metronome::BooleanModel

      # @!attribute is_commit_specific
      #   @return [Boolean]
      optional :is_commit_specific, Metronome::BooleanModel

      # @!attribute is_prorated
      #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true.
      #   @return [Boolean]
      optional :is_prorated, Metronome::BooleanModel

      # @!attribute multiplier
      #   @return [Float]
      optional :multiplier, Float

      # @!attribute override_specifiers
      #   @return [Array<Metronome::Models::Override::OverrideSpecifier>]
      optional :override_specifiers,
               Metronome::ArrayOf.new(-> { Metronome::Models::Override::OverrideSpecifier })

      # @!attribute override_tiers
      #   @return [Array<Metronome::Models::Override::OverrideTier>]
      optional :override_tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Override::OverrideTier })

      # @!attribute overwrite_rate
      #   @return [Metronome::Models::Override::OverwriteRate]
      optional :overwrite_rate, -> { Metronome::Models::Override::OverwriteRate }

      # @!attribute price
      #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #   @return [Float]
      optional :price, Float

      # @!attribute priority
      #   @return [Float]
      optional :priority, Float

      # @!attribute product
      #   @return [Metronome::Models::Override::Product]
      optional :product, -> { Metronome::Models::Override::Product }

      # @!attribute quantity
      #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #   @return [Float]
      optional :quantity, Float

      # @!attribute rate_type
      #   @return [Symbol, Metronome::Models::Override::RateType]
      optional :rate_type, enum: -> { Metronome::Models::Override::RateType }

      # @!attribute target
      #   @return [Symbol, Metronome::Models::Override::Target]
      optional :target, enum: -> { Metronome::Models::Override::Target }

      # @!attribute tiers
      #   Only set for TIERED rate_type.
      #   @return [Array<Metronome::Models::Tier>]
      optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

      # @!attribute type
      #   @return [Symbol, Metronome::Models::Override::Type]
      optional :type, enum: -> { Metronome::Models::Override::Type }

      # @!attribute value
      #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
      #   @return [Hash]
      optional :value, Hash

      class OverrideSpecifier < Metronome::BaseModel
        # @!attribute commit_ids
        #   @return [Array<String>]
        optional :commit_ids, Metronome::ArrayOf.new(String)

        # @!attribute presentation_group_values
        #   @return [Hash]
        optional :presentation_group_values, Hash

        # @!attribute pricing_group_values
        #   @return [Hash]
        optional :pricing_group_values, Hash

        # @!attribute product_id
        #   @return [String]
        optional :product_id, String

        # @!attribute product_tags
        #   @return [Array<String>]
        optional :product_tags, Metronome::ArrayOf.new(String)

        # @!parse
        #   # Create a new instance of OverrideSpecifier from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Array<String>, nil] :commit_ids
        #   #   @option data [Hash, nil] :presentation_group_values
        #   #   @option data [Hash, nil] :pricing_group_values
        #   #   @option data [String, nil] :product_id
        #   #   @option data [Array<String>, nil] :product_tags
        #   def initialize(data = {}) = super
      end

      class OverrideTier < Metronome::BaseModel
        # @!attribute multiplier
        #   @return [Float]
        required :multiplier, Float

        # @!attribute size
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

      class OverwriteRate < Metronome::BaseModel
        # @!attribute rate_type
        #   @return [Symbol, Metronome::Models::Override::OverwriteRate::RateType]
        required :rate_type, enum: -> { Metronome::Models::Override::OverwriteRate::RateType }

        # @!attribute credit_type
        #   @return [Metronome::Models::CreditTypeData]
        optional :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute custom_rate
        #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
        #   @return [Hash]
        optional :custom_rate, Hash

        # @!attribute is_prorated
        #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true.
        #   @return [Boolean]
        optional :is_prorated, Metronome::BooleanModel

        # @!attribute price
        #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #   @return [Float]
        optional :price, Float

        # @!attribute quantity
        #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #   @return [Float]
        optional :quantity, Float

        # @!attribute tiers
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
        #   #   @option data [Hash, nil] :is_prorated Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
        #   #     set to true.
        #   #   @option data [Float, nil] :price Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
        #   #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #   #   @option data [Float, nil] :quantity Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #   #   @option data [Array<Object>, nil] :tiers Only set for TIERED rate_type.
        #   def initialize(data = {}) = super
      end

      class Product < Metronome::BaseModel
        # @!attribute id
        #   @return [String]
        required :id, String

        # @!attribute name
        #   @return [String]
        required :name, String

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

      class Target < Metronome::Enum
        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE
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
      #   #   @option data [Hash, nil] :is_commit_specific
      #   #   @option data [Hash, nil] :is_prorated Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      #   #     set to true.
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
      #   #   @option data [String, nil] :target
      #   #   @option data [Array<Object>, nil] :tiers Only set for TIERED rate_type.
      #   #   @option data [String, nil] :type
      #   #   @option data [Hash, nil] :value Only set for CUSTOM rate_type. This field is interpreted by custom rate
      #   #     processors.
      #   def initialize(data = {}) = super
    end
  end
end
