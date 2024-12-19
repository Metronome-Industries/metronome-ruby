# frozen_string_literal: true

module Metronome
  module Models
    class Credit < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [Metronome::Models::Credit::Product]
      required :product, -> { Metronome::Models::Credit::Product }

      # @!attribute type
      #
      #   @return [Symbol, Metronome::Models::Credit::Type]
      required :type, enum: -> { Metronome::Models::Credit::Type }

      # @!attribute access_schedule
      #   The schedule that the customer will gain access to the credits.
      #
      #   @return [Metronome::Models::ScheduleDuration]
      optional :access_schedule, -> { Metronome::Models::ScheduleDuration }

      # @!attribute applicable_contract_ids
      #
      #   @return [Array<String>]
      optional :applicable_contract_ids, Metronome::ArrayOf[String]

      # @!attribute applicable_product_ids
      #
      #   @return [Array<String>]
      optional :applicable_product_ids, Metronome::ArrayOf[String]

      # @!attribute applicable_product_tags
      #
      #   @return [Array<String>]
      optional :applicable_product_tags, Metronome::ArrayOf[String]

      # @!attribute contract
      #
      #   @return [Metronome::Models::Credit::Contract]
      optional :contract, -> { Metronome::Models::Credit::Contract }

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol => String}]
      optional :custom_fields, Metronome::HashOf[String]

      # @!attribute description
      #
      #   @return [String]
      optional :description, String

      # @!attribute ledger
      #   A list of ordered events that impact the balance of a credit. For example, an invoice deduction or an expiration.
      #
      #   @return [Array<Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent13, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent14, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent15, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent16, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent17, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent18>]
      optional :ledger, Metronome::ArrayOf[Metronome::Unknown]

      # @!attribute name
      #
      #   @return [String]
      optional :name, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!attribute priority
      #   If multiple credits or commits are applicable, the one with the lower priority will apply first.
      #
      #   @return [Float]
      optional :priority, Float

      # @!attribute rate_type
      #
      #   @return [Symbol, Metronome::Models::Credit::RateType]
      optional :rate_type, enum: -> { Metronome::Models::Credit::RateType }

      # @!attribute salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :salesforce_opportunity_id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param product [Metronome::Models::Credit::Product]
      #   #
      #   # @param type [String]
      #   #
      #   # @param access_schedule [Metronome::Models::ScheduleDuration, nil] The schedule that the customer will gain access to the credits.
      #   #
      #   # @param applicable_contract_ids [Array<String>, nil]
      #   #
      #   # @param applicable_product_ids [Array<String>, nil]
      #   #
      #   # @param applicable_product_tags [Array<String>, nil]
      #   #
      #   # @param contract [Metronome::Models::Credit::Contract, nil]
      #   #
      #   # @param custom_fields [Hash{Symbol => String}, nil]
      #   #
      #   # @param description [String, nil]
      #   #
      #   # @param ledger [Array<Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent13, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent14, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent15, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent16, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent17, Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent18>, nil] A list of ordered events that impact the balance of a credit. For example, an
      #   #   invoice deduction or an expiration.
      #   #
      #   # @param name [String, nil]
      #   #
      #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param priority [Float, nil] If multiple credits or commits are applicable, the one with the lower priority
      #   #   will apply first.
      #   #
      #   # @param rate_type [String, nil]
      #   #
      #   # @param salesforce_opportunity_id [String, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   def initialize(
      #     id:,
      #     product:,
      #     type:,
      #     access_schedule: nil,
      #     applicable_contract_ids: nil,
      #     applicable_product_ids: nil,
      #     applicable_product_tags: nil,
      #     contract: nil,
      #     custom_fields: nil,
      #     description: nil,
      #     ledger: nil,
      #     name: nil,
      #     netsuite_sales_order_id: nil,
      #     priority: nil,
      #     rate_type: nil,
      #     salesforce_opportunity_id: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

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
      # case enum
      # in :CREDIT
      #   # ...
      # end
      # ```
      class Type < Metronome::Enum
        CREDIT = :CREDIT
      end

      class Contract < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # @param id [String]
        #   #
        #   def initialize(id:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
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
      class RateType < Metronome::Enum
        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE
      end
    end
  end
end
