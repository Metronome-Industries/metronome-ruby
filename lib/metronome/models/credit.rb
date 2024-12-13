# frozen_string_literal: true

module Metronome
  module Models
    class Credit < Metronome::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute product
      #   @return [Metronome::Models::Credit::Product]
      required :product, -> { Metronome::Models::Credit::Product }

      # @!attribute type
      #   @return [Symbol, Metronome::Models::Credit::Type]
      required :type, enum: -> { Metronome::Models::Credit::Type }

      # @!attribute access_schedule
      #   The schedule that the customer will gain access to the credits.
      #   @return [Metronome::Models::ScheduleDuration]
      optional :access_schedule, -> { Metronome::Models::ScheduleDuration }

      # @!attribute applicable_contract_ids
      #   @return [Array<String>]
      optional :applicable_contract_ids, Metronome::ArrayOf.new(String)

      # @!attribute applicable_product_ids
      #   @return [Array<String>]
      optional :applicable_product_ids, Metronome::ArrayOf.new(String)

      # @!attribute applicable_product_tags
      #   @return [Array<String>]
      optional :applicable_product_tags, Metronome::ArrayOf.new(String)

      # @!attribute contract
      #   @return [Metronome::Models::Credit::Contract]
      optional :contract, -> { Metronome::Models::Credit::Contract }

      # @!attribute custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute description
      #   @return [String]
      optional :description, String

      # @!attribute ledger
      #   A list of ordered events that impact the balance of a credit. For example, an invoice deduction or an expiration.
      #   @return [Array<Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent13, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent14, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent15, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent16, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent17, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent18>]
      optional :ledger, Metronome::ArrayOf.new(Metronome::Unknown)

      # @!attribute name
      #   @return [String]
      optional :name, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!attribute priority
      #   If multiple credits or commits are applicable, the one with the lower priority will apply first.
      #   @return [Float]
      optional :priority, Float

      # @!attribute rate_type
      #   @return [Symbol, Metronome::Models::Credit::RateType]
      optional :rate_type, enum: -> { Metronome::Models::Credit::RateType }

      # @!attribute salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :salesforce_opportunity_id, String

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

      class Type < Metronome::Enum
        CREDIT = :CREDIT
      end

      class Contract < Metronome::BaseModel
        # @!attribute id
        #   @return [String]
        required :id, String

        # @!parse
        #   # Create a new instance of Contract from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   def initialize(data = {}) = super
      end

      class RateType < Metronome::Enum
        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE
      end

      # @!parse
      #   # Create a new instance of Credit from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Object] :product
      #   #   @option data [String] :type
      #   #   @option data [Object, nil] :access_schedule The schedule that the customer will gain access to the credits.
      #   #   @option data [Array<String>, nil] :applicable_contract_ids
      #   #   @option data [Array<String>, nil] :applicable_product_ids
      #   #   @option data [Array<String>, nil] :applicable_product_tags
      #   #   @option data [Object, nil] :contract
      #   #   @option data [Hash, nil] :custom_fields
      #   #   @option data [String, nil] :description
      #   #   @option data [Array<Object>, nil] :ledger A list of ordered events that impact the balance of a credit. For example, an
      #   #     invoice deduction or an expiration.
      #   #   @option data [String, nil] :name
      #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
      #   #   @option data [Float, nil] :priority If multiple credits or commits are applicable, the one with the lower priority
      #   #     will apply first.
      #   #   @option data [String, nil] :rate_type
      #   #   @option data [String, nil] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
      #   def initialize(data = {}) = super
    end
  end
end
