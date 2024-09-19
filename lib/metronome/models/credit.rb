# frozen_string_literal: true

module Metronome
  module Models
    class Credit < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] product
      #   @return [Metronome::Models::Credit::Product]
      required :product, -> { Metronome::Models::Credit::Product }

      # @!attribute [rw] type
      #   One of the constants defined in {Metronome::Models::Credit::Type}
      #   @return [Symbol]
      required :type, enum: -> { Metronome::Models::Credit::Type }

      # @!attribute [rw] access_schedule
      #   The schedule that the customer will gain access to the credits.
      #   @return [Metronome::Models::ScheduleDuration]
      optional :access_schedule, -> { Metronome::Models::ScheduleDuration }

      # @!attribute [rw] applicable_contract_ids
      #   @return [Array<String>]
      optional :applicable_contract_ids, Metronome::ArrayOf.new(String)

      # @!attribute [rw] applicable_product_ids
      #   @return [Array<String>]
      optional :applicable_product_ids, Metronome::ArrayOf.new(String)

      # @!attribute [rw] applicable_product_tags
      #   @return [Array<String>]
      optional :applicable_product_tags, Metronome::ArrayOf.new(String)

      # @!attribute [rw] contract
      #   @return [Metronome::Models::Credit::Contract]
      optional :contract, -> { Metronome::Models::Credit::Contract }

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute [rw] description
      #   @return [String]
      optional :description, String

      # @!attribute [rw] ledger
      #   A list of ordered events that impact the balance of a credit. For example, an invoice deduction or an expiration.
      #   @return [Array<Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent13|Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent14|Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent15|Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent16|Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent17|Metronome::Models::Credit::Ledger::UnnamedTypeWithunionParent18>]
      optional :ledger, Metronome::ArrayOf.new(Metronome::Unknown)

      # @!attribute [rw] name_
      #   @return [String]
      optional :name_, String

      # @!attribute [rw] netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!attribute [rw] priority
      #   If multiple credits or commits are applicable, the one with the lower priority will apply first.
      #   @return [Float]
      optional :priority, Float

      # @!attribute [rw] salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :salesforce_opportunity_id, String

      class Product < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String
      end

      class Type < Metronome::Enum
        CREDIT = :CREDIT
      end

      class Contract < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end
    end
  end
end
