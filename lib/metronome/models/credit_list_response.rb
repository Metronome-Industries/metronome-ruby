# frozen_string_literal: true

module Metronome
  module Models
    class CreditListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::CreditListResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CreditListResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] product
        #   @return [Metronome::Models::CreditListResponse::Data::Product]
        required :product, -> { Metronome::Models::CreditListResponse::Data::Product }

        # @!attribute [rw] type
        #   @return [Symbol]
        required :type, Metronome::Enum.new(:CREDIT)

        # @!attribute [rw] access_schedule
        #   The schedule that the customer will gain access to the credits.
        #   @return [Metronome::Models::CreditListResponse::Data::AccessSchedule]
        optional :access_schedule, -> { Metronome::Models::CreditListResponse::Data::AccessSchedule }

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
        #   @return [Metronome::Models::CreditListResponse::Data::Contract]
        optional :contract, -> { Metronome::Models::CreditListResponse::Data::Contract }

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] description
        #   @return [String]
        optional :description, String

        # @!attribute [rw] ledger
        #   A list of ordered events that impact the balance of a credit. For example, an invoice deduction or an expiration.
        #   @return [Array<Metronome::Models::CreditListResponse::Data::Ledger::UnnamedTypeWithunionParent19|Metronome::Models::CreditListResponse::Data::Ledger::UnnamedTypeWithunionParent20|Metronome::Models::CreditListResponse::Data::Ledger::UnnamedTypeWithunionParent21|Metronome::Models::CreditListResponse::Data::Ledger::UnnamedTypeWithunionParent22|Metronome::Models::CreditListResponse::Data::Ledger::UnnamedTypeWithunionParent23|Metronome::Models::CreditListResponse::Data::Ledger::UnnamedTypeWithunionParent24>]
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

        class AccessSchedule < BaseModel
          # @!attribute [rw] schedule_items
          #   @return [Array<Metronome::Models::CreditListResponse::Data::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   Metronome::ArrayOf.new(-> { Metronome::Models::CreditListResponse::Data::AccessSchedule::ScheduleItem })

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
      end
    end
  end
end
