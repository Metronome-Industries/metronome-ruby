# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractEditCommitParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def commit_id
        end

        sig { params(_: String).returns(String) }
        def commit_id=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule)) }
        def access_schedule
        end

        sig do
          params(_: MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule)
            .returns(MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule)
        end
        def access_schedule=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def applicable_product_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def applicable_product_ids=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def applicable_product_tags
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def applicable_product_tags=(_)
        end

        sig { returns(T.nilable(String)) }
        def invoice_contract_id
        end

        sig { params(_: String).returns(String) }
        def invoice_contract_id=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule)) }
        def invoice_schedule
        end

        sig do
          params(_: MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule)
            .returns(MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule)
        end
        def invoice_schedule=(_)
        end

        sig { returns(T.nilable(String)) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
        end

        sig do
          params(
            commit_id: String,
            customer_id: String,
            access_schedule: MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule,
            applicable_product_ids: T.nilable(T::Array[String]),
            applicable_product_tags: T.nilable(T::Array[String]),
            invoice_contract_id: String,
            invoice_schedule: MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule,
            product_id: String,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          commit_id:,
          customer_id:,
          access_schedule: nil,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          invoice_contract_id: nil,
          invoice_schedule: nil,
          product_id: nil,
          request_options: {}
        )
        end

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
        def to_hash
        end

        class AccessSchedule < MetronomeSDK::BaseModel
          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem])
            )
          end
          def add_schedule_items
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem])
          end
          def add_schedule_items=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem]
              )
            )
          end
          def remove_schedule_items
          end

          sig do
            params(
              _: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem]
            )
              .returns(T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem])
          end
          def remove_schedule_items=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem]
              )
            )
          end
          def update_schedule_items
          end

          sig do
            params(
              _: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem]
            )
              .returns(T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem])
          end
          def update_schedule_items=(_)
          end

          sig do
            params(
              add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem],
              remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem],
              update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem]
            )
              .void
          end
          def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
          end

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
          def to_hash
          end

          class AddScheduleItem < MetronomeSDK::BaseModel
            sig { returns(Float) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(Time) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { params(amount: Float, ending_before: Time, starting_at: Time).void }
            def initialize(amount:, ending_before:, starting_at:)
            end

            sig { override.returns({amount: Float, ending_before: Time, starting_at: Time}) }
            def to_hash
            end
          end

          class RemoveScheduleItem < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { params(id: String).void }
            def initialize(id:)
            end

            sig { override.returns({id: String}) }
            def to_hash
            end
          end

          class UpdateScheduleItem < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(T.nilable(Time)) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(T.nilable(Time)) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { params(id: String, amount: Float, ending_before: Time, starting_at: Time).void }
            def initialize(id:, amount: nil, ending_before: nil, starting_at: nil)
            end

            sig { override.returns({id: String, amount: Float, ending_before: Time, starting_at: Time}) }
            def to_hash
            end
          end
        end

        class InvoiceSchedule < MetronomeSDK::BaseModel
          sig do
            returns(
              T.nilable(T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem])
            )
          end
          def add_schedule_items
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem])
          end
          def add_schedule_items=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem]
              )
            )
          end
          def remove_schedule_items
          end

          sig do
            params(
              _: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem]
            )
              .returns(T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem])
          end
          def remove_schedule_items=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem]
              )
            )
          end
          def update_schedule_items
          end

          sig do
            params(
              _: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem]
            )
              .returns(T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem])
          end
          def update_schedule_items=(_)
          end

          sig do
            params(
              add_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem],
              remove_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem],
              update_schedule_items: T::Array[MetronomeSDK::Models::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem]
            )
              .void
          end
          def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
          end

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
          def to_hash
          end

          class AddScheduleItem < MetronomeSDK::BaseModel
            sig { returns(Time) }
            def timestamp
            end

            sig { params(_: Time).returns(Time) }
            def timestamp=(_)
            end

            sig { returns(T.nilable(Float)) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(T.nilable(Float)) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(T.nilable(Float)) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
            def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
            end

            sig { override.returns({timestamp: Time, amount: Float, quantity: Float, unit_price: Float}) }
            def to_hash
            end
          end

          class RemoveScheduleItem < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { params(id: String).void }
            def initialize(id:)
            end

            sig { override.returns({id: String}) }
            def to_hash
            end
          end

          class UpdateScheduleItem < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(T.nilable(Float)) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(T.nilable(Time)) }
            def timestamp
            end

            sig { params(_: Time).returns(Time) }
            def timestamp=(_)
            end

            sig { returns(T.nilable(Float)) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig do
              params(id: String, amount: Float, quantity: Float, timestamp: Time, unit_price: Float).void
            end
            def initialize(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil)
            end

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
            def to_hash
            end
          end
        end
      end
    end
  end
end
