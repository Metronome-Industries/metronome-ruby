# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#edit_commit
      class ContractEditCommitParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute commit_id
        #   ID of the commit to edit
        #
        #   @return [String]
        required :commit_id, String

        # @!attribute customer_id
        #   ID of the customer whose commit is being edited
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute access_schedule
        #
        #   @return [MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule, nil]
        optional :access_schedule, -> { MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule }

        # @!attribute applicable_product_ids
        #   Which products the commit applies to. If both applicable_product_ids and
        #   applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute applicable_product_tags
        #   Which tags the commit applies to. If both applicable_product_ids and
        #   applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute invoice_contract_id
        #   ID of contract to use for invoicing
        #
        #   @return [String, nil]
        optional :invoice_contract_id, String

        # @!attribute invoice_schedule
        #
        #   @return [MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule, nil]
        optional :invoice_schedule, -> { MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule }

        # @!attribute product_id
        #
        #   @return [String, nil]
        optional :product_id, String

        # @!method initialize(commit_id:, customer_id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, invoice_contract_id: nil, invoice_schedule: nil, product_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V2::ContractEditCommitParams} for more details.
        #
        #   @param commit_id [String] ID of the commit to edit
        #
        #   @param customer_id [String] ID of the customer whose commit is being edited
        #
        #   @param access_schedule [MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule]
        #
        #   @param applicable_product_ids [Array<String>, nil] Which products the commit applies to. If both applicable_product_ids and applica
        #
        #   @param applicable_product_tags [Array<String>, nil] Which tags the commit applies to. If both applicable*product_ids and applicable*
        #
        #   @param invoice_contract_id [String] ID of contract to use for invoicing
        #
        #   @param invoice_schedule [MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule]
        #
        #   @param product_id [String]
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute add_schedule_items
          #
          #   @return [Array<MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem>, nil]
          optional :add_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem]
                   }

          # @!attribute remove_schedule_items
          #
          #   @return [Array<MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem>, nil]
          optional :remove_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem]
                   }

          # @!attribute update_schedule_items
          #
          #   @return [Array<MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem>, nil]
          optional :update_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem]
                   }

          # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
          #   @param add_schedule_items [Array<MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem>]
          #   @param remove_schedule_items [Array<MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem>]
          #   @param update_schedule_items [Array<MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem>]

          class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute ending_before
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!method initialize(amount:, ending_before:, starting_at:)
            #   @param amount [Float]
            #   @param ending_before [Time]
            #   @param starting_at [Time]
          end

          class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String]
          end

          class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute starting_at
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!method initialize(id:, amount: nil, ending_before: nil, starting_at: nil)
            #   @param id [String]
            #   @param amount [Float]
            #   @param ending_before [Time]
            #   @param starting_at [Time]
          end
        end

        class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute add_schedule_items
          #
          #   @return [Array<MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem>, nil]
          optional :add_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem]
                   }

          # @!attribute remove_schedule_items
          #
          #   @return [Array<MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem>, nil]
          optional :remove_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem]
                   }

          # @!attribute update_schedule_items
          #
          #   @return [Array<MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem>, nil]
          optional :update_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem]
                   }

          # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
          #   @param add_schedule_items [Array<MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem>]
          #   @param remove_schedule_items [Array<MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem>]
          #   @param update_schedule_items [Array<MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem>]

          class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute amount
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute quantity
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!attribute unit_price
            #
            #   @return [Float, nil]
            optional :unit_price, Float

            # @!method initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
            #   @param timestamp [Time]
            #   @param amount [Float]
            #   @param quantity [Float]
            #   @param unit_price [Float]
          end

          class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String]
          end

          class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute quantity
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!attribute timestamp
            #
            #   @return [Time, nil]
            optional :timestamp, Time

            # @!attribute unit_price
            #
            #   @return [Float, nil]
            optional :unit_price, Float

            # @!method initialize(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil)
            #   @param id [String]
            #   @param amount [Float]
            #   @param quantity [Float]
            #   @param timestamp [Time]
            #   @param unit_price [Float]
          end
        end
      end
    end
  end
end
