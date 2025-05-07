# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractEditCreditParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        # ID of the credit to edit
        sig { returns(String) }
        attr_accessor :credit_id

        # ID of the customer whose credit is being edited
        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule
            )
          )
        end
        attr_reader :access_schedule

        sig do
          params(
            access_schedule:
              MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::OrHash
          ).void
        end
        attr_writer :access_schedule

        # Which products the credit applies to. If both applicable_product_ids and
        # applicable_product_tags are not provided, the credit applies to all products.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :applicable_product_ids

        # Which tags the credit applies to. If both applicable_product_ids and
        # applicable_product_tags are not provided, the credit applies to all products.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :applicable_product_tags

        sig { returns(T.nilable(String)) }
        attr_reader :product_id

        sig { params(product_id: String).void }
        attr_writer :product_id

        sig do
          params(
            credit_id: String,
            customer_id: String,
            access_schedule:
              MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::OrHash,
            applicable_product_ids: T.nilable(T::Array[String]),
            applicable_product_tags: T.nilable(T::Array[String]),
            product_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the credit to edit
          credit_id:,
          # ID of the customer whose credit is being edited
          customer_id:,
          access_schedule: nil,
          # Which products the credit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the credit applies to all products.
          applicable_product_ids: nil,
          # Which tags the credit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the credit applies to all products.
          applicable_product_tags: nil,
          product_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              credit_id: String,
              customer_id: String,
              access_schedule:
                MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule,
              applicable_product_ids: T.nilable(T::Array[String]),
              applicable_product_tags: T.nilable(T::Array[String]),
              product_id: String,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem
                ]
              )
            )
          end
          attr_reader :add_schedule_items

          sig do
            params(
              add_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem::OrHash
                ]
            ).void
          end
          attr_writer :add_schedule_items

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem
                ]
              )
            )
          end
          attr_reader :remove_schedule_items

          sig do
            params(
              remove_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem::OrHash
                ]
            ).void
          end
          attr_writer :remove_schedule_items

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem
                ]
              )
            )
          end
          attr_reader :update_schedule_items

          sig do
            params(
              update_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem::OrHash
                ]
            ).void
          end
          attr_writer :update_schedule_items

          sig do
            params(
              add_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem::OrHash
                ],
              remove_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem::OrHash
                ],
              update_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            add_schedule_items: nil,
            remove_schedule_items: nil,
            update_schedule_items: nil
          )
          end

          sig do
            override.returns(
              {
                add_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem
                  ],
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem
                  ],
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem
                  ]
              }
            )
          end
          def to_hash
          end

          class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
              end

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :ending_before

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              params(
                amount: Float,
                ending_before: Time,
                starting_at: Time
              ).returns(T.attached_class)
            end
            def self.new(amount:, ending_before:, starting_at:)
            end

            sig do
              override.returns(
                { amount: Float, ending_before: Time, starting_at: Time }
              )
            end
            def to_hash
            end
          end

          class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
              end

            sig { returns(String) }
            attr_accessor :id

            sig { params(id: String).returns(T.attached_class) }
            def self.new(id:)
            end

            sig { override.returns({ id: String }) }
            def to_hash
            end
          end

          class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig { returns(T.nilable(Time)) }
            attr_reader :starting_at

            sig { params(starting_at: Time).void }
            attr_writer :starting_at

            sig do
              params(
                id: String,
                amount: Float,
                ending_before: Time,
                starting_at: Time
              ).returns(T.attached_class)
            end
            def self.new(id:, amount: nil, ending_before: nil, starting_at: nil)
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  ending_before: Time,
                  starting_at: Time
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
