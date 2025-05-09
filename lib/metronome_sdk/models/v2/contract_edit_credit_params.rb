# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#edit_credit
      class ContractEditCreditParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute credit_id
        #   ID of the credit to edit
        #
        #   @return [String]
        required :credit_id, String

        # @!attribute customer_id
        #   ID of the customer whose credit is being edited
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute access_schedule
        #
        #   @return [MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule, nil]
        optional :access_schedule, -> { MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule }

        # @!attribute applicable_product_ids
        #   Which products the credit applies to. If both applicable_product_ids and
        #   applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute applicable_product_tags
        #   Which tags the credit applies to. If both applicable_product_ids and
        #   applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute product_id
        #
        #   @return [String, nil]
        optional :product_id, String

        # @!method initialize(credit_id:, customer_id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, product_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V2::ContractEditCreditParams} for more details.
        #
        #   @param credit_id [String] ID of the credit to edit
        #
        #   @param customer_id [String] ID of the customer whose credit is being edited
        #
        #   @param access_schedule [MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule]
        #
        #   @param applicable_product_ids [Array<String>, nil] Which products the credit applies to. If both applicable_product_ids and applica
        #
        #   @param applicable_product_tags [Array<String>, nil] Which tags the credit applies to. If both applicable*product_ids and applicable*
        #
        #   @param product_id [String]
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute add_schedule_items
          #
          #   @return [Array<MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem>, nil]
          optional :add_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem]
                   }

          # @!attribute remove_schedule_items
          #
          #   @return [Array<MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem>, nil]
          optional :remove_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem]
                   }

          # @!attribute update_schedule_items
          #
          #   @return [Array<MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem>, nil]
          optional :update_schedule_items,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem]
                   }

          # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
          #   @param add_schedule_items [Array<MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem>]
          #   @param remove_schedule_items [Array<MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem>]
          #   @param update_schedule_items [Array<MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem>]

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
      end
    end
  end
end
