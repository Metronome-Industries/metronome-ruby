# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractEditCommitParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # ID of the commit to edit
        sig { returns(String) }
        attr_accessor :commit_id

        # ID of the customer whose commit is being edited
        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule)) }
        attr_reader :access_schedule

        sig do
          params(
            access_schedule: T.any(MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule, MetronomeSDK::Internal::AnyHash)
          )
            .void
        end
        attr_writer :access_schedule

        # Which products the commit applies to. If both applicable_product_ids and
        # applicable_product_tags are not provided, the commit applies to all products.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :applicable_product_ids

        # Which tags the commit applies to. If both applicable_product_ids and
        # applicable_product_tags are not provided, the commit applies to all products.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :applicable_product_tags

        # ID of contract to use for invoicing
        sig { returns(T.nilable(String)) }
        attr_reader :invoice_contract_id

        sig { params(invoice_contract_id: String).void }
        attr_writer :invoice_contract_id

        sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule)) }
        attr_reader :invoice_schedule

        sig do
          params(
            invoice_schedule: T.any(
              MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :invoice_schedule

        sig { returns(T.nilable(String)) }
        attr_reader :product_id

        sig { params(product_id: String).void }
        attr_writer :product_id

        sig do
          params(
            commit_id: String,
            customer_id: String,
            access_schedule: T.any(MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule, MetronomeSDK::Internal::AnyHash),
            applicable_product_ids: T.nilable(T::Array[String]),
            applicable_product_tags: T.nilable(T::Array[String]),
            invoice_contract_id: String,
            invoice_schedule: T.any(
              MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule,
              MetronomeSDK::Internal::AnyHash
            ),
            product_id: String,
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # ID of the commit to edit
          commit_id:,
          # ID of the customer whose commit is being edited
          customer_id:,
          access_schedule: nil,
          # Which products the commit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the commit applies to all products.
          applicable_product_ids: nil,
          # Which tags the commit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the commit applies to all products.
          applicable_product_tags: nil,
          # ID of contract to use for invoicing
          invoice_contract_id: nil,
          invoice_schedule: nil,
          product_id: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                commit_id: String,
                customer_id: String,
                access_schedule: MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule,
                applicable_product_ids: T.nilable(T::Array[String]),
                applicable_product_tags: T.nilable(T::Array[String]),
                invoice_contract_id: String,
                invoice_schedule: MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule,
                product_id: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end

        class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem])
            )
          end
          attr_reader :add_schedule_items

          sig do
            params(
              add_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .void
          end
          attr_writer :add_schedule_items

          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem]
              )
            )
          end
          attr_reader :remove_schedule_items

          sig do
            params(
              remove_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .void
          end
          attr_writer :remove_schedule_items

          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem]
              )
            )
          end
          attr_reader :update_schedule_items

          sig do
            params(
              update_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .void
          end
          attr_writer :update_schedule_items

          sig do
            params(
              add_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ],
              remove_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ],
              update_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .returns(T.attached_class)
          end
          def self.new(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil); end

          sig do
            override
              .returns(
                {
                  add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem],
                  remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem],
                  update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem]
                }
              )
          end
          def to_hash; end

          class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :ending_before

            sig { returns(Time) }
            attr_accessor :starting_at

            sig { params(amount: Float, ending_before: Time, starting_at: Time).returns(T.attached_class) }
            def self.new(amount:, ending_before:, starting_at:); end

            sig { override.returns({amount: Float, ending_before: Time, starting_at: Time}) }
            def to_hash; end
          end

          class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { params(id: String).returns(T.attached_class) }
            def self.new(id:); end

            sig { override.returns({id: String}) }
            def to_hash; end
          end

          class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
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
            def self.new(id:, amount: nil, ending_before: nil, starting_at: nil); end

            sig { override.returns({id: String, amount: Float, ending_before: Time, starting_at: Time}) }
            def to_hash; end
          end
        end

        class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem])
            )
          end
          attr_reader :add_schedule_items

          sig do
            params(
              add_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .void
          end
          attr_writer :add_schedule_items

          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem]
              )
            )
          end
          attr_reader :remove_schedule_items

          sig do
            params(
              remove_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .void
          end
          attr_writer :remove_schedule_items

          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem]
              )
            )
          end
          attr_reader :update_schedule_items

          sig do
            params(
              update_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .void
          end
          attr_writer :update_schedule_items

          sig do
            params(
              add_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ],
              remove_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ],
              update_schedule_items: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .returns(T.attached_class)
          end
          def self.new(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil); end

          sig do
            override
              .returns(
                {
                  add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem],
                  remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem],
                  update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem]
                }
              )
          end
          def to_hash; end

          class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(Time) }
            attr_accessor :timestamp

            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

            sig do
              params(
                timestamp: Time,
                amount: Float,
                quantity: Float,
                unit_price: Float
              ).returns(T.attached_class)
            end
            def self.new(timestamp:, amount: nil, quantity: nil, unit_price: nil); end

            sig { override.returns({timestamp: Time, amount: Float, quantity: Float, unit_price: Float}) }
            def to_hash; end
          end

          class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { params(id: String).returns(T.attached_class) }
            def self.new(id:); end

            sig { override.returns({id: String}) }
            def to_hash; end
          end

          class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Time)) }
            attr_reader :timestamp

            sig { params(timestamp: Time).void }
            attr_writer :timestamp

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

            sig do
              params(id: String, amount: Float, quantity: Float, timestamp: Time, unit_price: Float)
                .returns(T.attached_class)
            end
            def self.new(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil); end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  quantity: Float,
                  timestamp: Time,
                  unit_price: Float
                }
              )
            end
            def to_hash; end
          end
        end
      end
    end
  end
end
