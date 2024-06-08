# frozen_string_literal: true

module Metronome
  module Models
    class Commit < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] product
      #   @return [Metronome::Models::Commit::Product]
      required :product, -> { Metronome::Models::Commit::Product }

      # @!attribute [rw] type
      #   @return [Symbol]
      required :type, Metronome::Enum.new(:PREPAID, :POSTPAID)

      # @!attribute [rw] access_schedule
      #   The schedule that the customer will gain access to the credits purposed with this commit.
      #   @return [Metronome::Models::Commit::AccessSchedule]
      optional :access_schedule, -> { Metronome::Models::Commit::AccessSchedule }

      # @!attribute [rw] amount
      #   (DEPRECATED) Use access_schedule + invoice_schedule instead.
      #   @return [Float]
      optional :amount, Float

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
      #   @return [Metronome::Models::Commit::Contract]
      optional :contract, -> { Metronome::Models::Commit::Contract }

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute [rw] description
      #   @return [String]
      optional :description, String

      # @!attribute [rw] invoice_contract
      #   The contract that this commit will be billed on.
      #   @return [Metronome::Models::Commit::InvoiceContract]
      optional :invoice_contract, -> { Metronome::Models::Commit::InvoiceContract }

      # @!attribute [rw] invoice_schedule
      #   The schedule that the customer will be invoiced for this commit.
      #   @return [Metronome::Models::SchedulePointInTime]
      optional :invoice_schedule, -> { Metronome::Models::SchedulePointInTime }

      # @!attribute [rw] ledger
      #   A list of ordered events that impact the balance of a commit. For example, an invoice deduction or a rollover.
      #   @return [Array<Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent0|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent1|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent10|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent11|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent12|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent13|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent14|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent2|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent3|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent4|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent5|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent6|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent7|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent8|Metronome::Models::Commit::Ledger::UnnamedTypeWithunionParent9>]
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

      # @!attribute [rw] rolled_over_from
      #   @return [Metronome::Models::Commit::RolledOverFrom]
      optional :rolled_over_from, -> { Metronome::Models::Commit::RolledOverFrom }

      # @!attribute [rw] rollover_fraction
      #   @return [Float]
      optional :rollover_fraction, Float

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

      class AccessSchedule < BaseModel
        # @!attribute [rw] schedule_items
        #   @return [Array<Metronome::Models::Commit::AccessSchedule::ScheduleItem>]
        required :schedule_items,
                 Metronome::ArrayOf.new(-> { Metronome::Models::Commit::AccessSchedule::ScheduleItem })

        # @!attribute [rw] credit_type
        #   @return [Metronome::Models::CreditType]
        optional :credit_type, -> { Metronome::Models::CreditType }

        class ScheduleItem < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] amount
          #   @return [Float]
          required :amount, Float

          # @!attribute [rw] ending_before
          #   @return [String]
          required :ending_before, String

          # @!attribute [rw] starting_at
          #   @return [String]
          required :starting_at, String
        end
      end

      class Contract < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end

      class InvoiceContract < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end

      class RolledOverFrom < BaseModel
        # @!attribute [rw] commit_id
        #   @return [String]
        required :commit_id, String

        # @!attribute [rw] contract_id
        #   @return [String]
        required :contract_id, String
      end
    end
  end
end
