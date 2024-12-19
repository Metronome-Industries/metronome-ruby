# frozen_string_literal: true

module Metronome
  module Models
    class Commit < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [Metronome::Models::Commit::Product]
      required :product, -> { Metronome::Models::Commit::Product }

      # @!attribute type
      #
      #   @return [Symbol, Metronome::Models::Commit::Type]
      required :type, enum: -> { Metronome::Models::Commit::Type }

      # @!attribute access_schedule
      #   The schedule that the customer will gain access to the credits purposed with this commit.
      #
      #   @return [Metronome::Models::ScheduleDuration]
      optional :access_schedule, -> { Metronome::Models::ScheduleDuration }

      # @!attribute amount
      #   (DEPRECATED) Use access_schedule + invoice_schedule instead.
      #
      #   @return [Float]
      optional :amount, Float

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
      #   @return [Metronome::Models::Commit::Contract]
      optional :contract, -> { Metronome::Models::Commit::Contract }

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol => String}]
      optional :custom_fields, Metronome::HashOf[String]

      # @!attribute description
      #
      #   @return [String]
      optional :description, String

      # @!attribute invoice_contract
      #   The contract that this commit will be billed on.
      #
      #   @return [Metronome::Models::Commit::InvoiceContract]
      optional :invoice_contract, -> { Metronome::Models::Commit::InvoiceContract }

      # @!attribute invoice_schedule
      #   The schedule that the customer will be invoiced for this commit.
      #
      #   @return [Metronome::Models::SchedulePointInTime]
      optional :invoice_schedule, -> { Metronome::Models::SchedulePointInTime }

      # @!attribute ledger
      #   A list of ordered events that impact the balance of a commit. For example, an invoice deduction or a rollover.
      #
      #   @return [Array<Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent0, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent1, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent10, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent11, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent12, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent2, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent3, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent4, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent5, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent6, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent7, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent8, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent9>]
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
      #   @return [Symbol, Metronome::Models::Commit::RateType]
      optional :rate_type, enum: -> { Metronome::Models::Commit::RateType }

      # @!attribute rolled_over_from
      #
      #   @return [Metronome::Models::Commit::RolledOverFrom]
      optional :rolled_over_from, -> { Metronome::Models::Commit::RolledOverFrom }

      # @!attribute rollover_fraction
      #
      #   @return [Float]
      optional :rollover_fraction, Float

      # @!attribute salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :salesforce_opportunity_id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param product [Metronome::Models::Commit::Product]
      #   #
      #   # @param type [String]
      #   #
      #   # @param access_schedule [Metronome::Models::ScheduleDuration, nil] The schedule that the customer will gain access to the credits purposed with
      #   #   this commit.
      #   #
      #   # @param amount [Float, nil] (DEPRECATED) Use access_schedule + invoice_schedule instead.
      #   #
      #   # @param applicable_contract_ids [Array<String>, nil]
      #   #
      #   # @param applicable_product_ids [Array<String>, nil]
      #   #
      #   # @param applicable_product_tags [Array<String>, nil]
      #   #
      #   # @param contract [Metronome::Models::Commit::Contract, nil]
      #   #
      #   # @param custom_fields [Hash{Symbol => String}, nil]
      #   #
      #   # @param description [String, nil]
      #   #
      #   # @param invoice_contract [Metronome::Models::Commit::InvoiceContract, nil] The contract that this commit will be billed on.
      #   #
      #   # @param invoice_schedule [Metronome::Models::SchedulePointInTime, nil] The schedule that the customer will be invoiced for this commit.
      #   #
      #   # @param ledger [Array<Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent0, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent1, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent10, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent11, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent12, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent2, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent3, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent4, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent5, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent6, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent7, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent8, Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent9>, nil] A list of ordered events that impact the balance of a commit. For example, an
      #   #   invoice deduction or a rollover.
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
      #   # @param rolled_over_from [Metronome::Models::Commit::RolledOverFrom, nil]
      #   #
      #   # @param rollover_fraction [Float, nil]
      #   #
      #   # @param salesforce_opportunity_id [String, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   def initialize(
      #     id:,
      #     product:,
      #     type:,
      #     access_schedule: nil,
      #     amount: nil,
      #     applicable_contract_ids: nil,
      #     applicable_product_ids: nil,
      #     applicable_product_tags: nil,
      #     contract: nil,
      #     custom_fields: nil,
      #     description: nil,
      #     invoice_contract: nil,
      #     invoice_schedule: nil,
      #     ledger: nil,
      #     name: nil,
      #     netsuite_sales_order_id: nil,
      #     priority: nil,
      #     rate_type: nil,
      #     rolled_over_from: nil,
      #     rollover_fraction: nil,
      #     salesforce_opportunity_id: nil
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
        #   def initialize(id:, name:) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      #
      # ```ruby
      # case enum
      # in :PREPAID
      #   # ...
      # in :POSTPAID
      #   # ...
      # end
      # ```
      class Type < Metronome::Enum
        PREPAID = :PREPAID
        POSTPAID = :POSTPAID
      end

      class Contract < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # @param id [String]
        #   #
        #   def initialize(id:) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      class InvoiceContract < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # The contract that this commit will be billed on.
        #   #
        #   # @param id [String]
        #   #
        #   def initialize(id:) = super

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

      class RolledOverFrom < Metronome::BaseModel
        # @!attribute commit_id
        #
        #   @return [String]
        required :commit_id, String

        # @!attribute contract_id
        #
        #   @return [String]
        required :contract_id, String

        # @!parse
        #   # @param commit_id [String]
        #   # @param contract_id [String]
        #   #
        #   def initialize(commit_id:, contract_id:) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
