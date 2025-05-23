# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractEditCommitParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::ContractEditCommitParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ID of the commit to edit
        sig { returns(String) }
        attr_accessor :commit_id

        # ID of the customer whose commit is being edited
        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule
            )
          )
        end
        attr_reader :access_schedule

        sig do
          params(
            access_schedule:
              MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::OrHash
          ).void
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

        sig do
          returns(
            T.nilable(
              MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule
            )
          )
        end
        attr_reader :invoice_schedule

        sig do
          params(
            invoice_schedule:
              MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::OrHash
          ).void
        end
        attr_writer :invoice_schedule

        sig { returns(T.nilable(String)) }
        attr_reader :product_id

        sig { params(product_id: String).void }
        attr_writer :product_id

        # List of filters that determine what kind of customer usage draws down a commit
        # or credit. A customer's usage needs to meet the condition of at least one of the
        # specifiers to contribute to a commit's or credit's drawdown. This field cannot
        # be used together with `applicable_product_ids` or `applicable_product_tags`.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V2::ContractEditCommitParams::Specifier]
            )
          )
        end
        attr_reader :specifiers

        sig do
          params(
            specifiers:
              T::Array[
                MetronomeSDK::V2::ContractEditCommitParams::Specifier::OrHash
              ]
          ).void
        end
        attr_writer :specifiers

        sig do
          params(
            commit_id: String,
            customer_id: String,
            access_schedule:
              MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::OrHash,
            applicable_product_ids: T.nilable(T::Array[String]),
            applicable_product_tags: T.nilable(T::Array[String]),
            invoice_contract_id: String,
            invoice_schedule:
              MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::OrHash,
            product_id: String,
            specifiers:
              T::Array[
                MetronomeSDK::V2::ContractEditCommitParams::Specifier::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
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
          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          specifiers: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              commit_id: String,
              customer_id: String,
              access_schedule:
                MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule,
              applicable_product_ids: T.nilable(T::Array[String]),
              applicable_product_tags: T.nilable(T::Array[String]),
              invoice_contract_id: String,
              invoice_schedule:
                MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule,
              product_id: String,
              specifiers:
                T::Array[MetronomeSDK::V2::ContractEditCommitParams::Specifier],
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem
                ]
              )
            )
          end
          attr_reader :add_schedule_items

          sig do
            params(
              add_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem::OrHash
                ]
            ).void
          end
          attr_writer :add_schedule_items

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem
                ]
              )
            )
          end
          attr_reader :remove_schedule_items

          sig do
            params(
              remove_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem::OrHash
                ]
            ).void
          end
          attr_writer :remove_schedule_items

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem
                ]
              )
            )
          end
          attr_reader :update_schedule_items

          sig do
            params(
              update_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem::OrHash
                ]
            ).void
          end
          attr_writer :update_schedule_items

          sig do
            params(
              add_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem::OrHash
                ],
              remove_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem::OrHash
                ],
              update_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem::OrHash
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
                    MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem
                  ],
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem
                  ],
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem
                  ]
              }
            )
          end
          def to_hash
          end

          class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::AddScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
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
                T.any(
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::RemoveScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
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
                T.any(
                  MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::UpdateScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
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

        class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem
                ]
              )
            )
          end
          attr_reader :add_schedule_items

          sig do
            params(
              add_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem::OrHash
                ]
            ).void
          end
          attr_writer :add_schedule_items

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem
                ]
              )
            )
          end
          attr_reader :remove_schedule_items

          sig do
            params(
              remove_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem::OrHash
                ]
            ).void
          end
          attr_writer :remove_schedule_items

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem
                ]
              )
            )
          end
          attr_reader :update_schedule_items

          sig do
            params(
              update_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem::OrHash
                ]
            ).void
          end
          attr_writer :update_schedule_items

          sig do
            params(
              add_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem::OrHash
                ],
              remove_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem::OrHash
                ],
              update_schedule_items:
                T::Array[
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem::OrHash
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
                    MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem
                  ],
                remove_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem
                  ],
                update_schedule_items:
                  T::Array[
                    MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem
                  ]
              }
            )
          end
          def to_hash
          end

          class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::AddScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              end

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
            def self.new(
              timestamp:,
              amount: nil,
              quantity: nil,
              unit_price: nil
            )
            end

            sig do
              override.returns(
                {
                  timestamp: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                }
              )
            end
            def to_hash
            end
          end

          class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::RemoveScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
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
                T.any(
                  MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::UpdateScheduleItem,
                  MetronomeSDK::Internal::AnyHash
                )
              end

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
              params(
                id: String,
                amount: Float,
                quantity: Float,
                timestamp: Time,
                unit_price: Float
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              amount: nil,
              quantity: nil,
              timestamp: nil,
              unit_price: nil
            )
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

        class Specifier < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V2::ContractEditCommitParams::Specifier,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :presentation_group_values

          sig do
            params(presentation_group_values: T::Hash[Symbol, String]).void
          end
          attr_writer :presentation_group_values

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :pricing_group_values

          sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
          attr_writer :pricing_group_values

          # If provided, the specifier will only apply to the product with the specified ID.
          sig { returns(T.nilable(String)) }
          attr_reader :product_id

          sig { params(product_id: String).void }
          attr_writer :product_id

          # If provided, the specifier will only apply to products with all the specified
          # tags.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :product_tags

          sig { params(product_tags: T::Array[String]).void }
          attr_writer :product_tags

          sig do
            params(
              presentation_group_values: T::Hash[Symbol, String],
              pricing_group_values: T::Hash[Symbol, String],
              product_id: String,
              product_tags: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            presentation_group_values: nil,
            pricing_group_values: nil,
            # If provided, the specifier will only apply to the product with the specified ID.
            product_id: nil,
            # If provided, the specifier will only apply to products with all the specified
            # tags.
            product_tags: nil
          )
          end

          sig do
            override.returns(
              {
                presentation_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String]
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
