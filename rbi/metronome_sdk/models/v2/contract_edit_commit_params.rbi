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

        # Which products the commit applies to. If applicable_product_ids,
        # applicable_product_tags or specifiers are not provided, the commit applies to
        # all products.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :applicable_product_ids

        # Which tags the commit applies to. If applicable_product_ids,
        # applicable_product_tags or specifiers are not provided, the commit applies to
        # all products.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :applicable_product_tags

        # Optional configuration for commit hierarchy access control
        sig { returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration)) }
        attr_reader :hierarchy_configuration

        sig do
          params(
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash
          ).void
        end
        attr_writer :hierarchy_configuration

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

        # If multiple commits are applicable, the one with the lower priority will apply
        # first.
        sig { returns(T.nilable(Float)) }
        attr_accessor :priority

        sig { returns(T.nilable(String)) }
        attr_reader :product_id

        sig { params(product_id: String).void }
        attr_writer :product_id

        # If provided, updates the commit to use the specified rate type for current and
        # future invoices. Previously finalized invoices will need to be voided and
        # regenerated to reflect the rate type change.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V2::ContractEditCommitParams::RateType::OrSymbol
            )
          )
        end
        attr_reader :rate_type

        sig do
          params(
            rate_type:
              MetronomeSDK::V2::ContractEditCommitParams::RateType::OrSymbol
          ).void
        end
        attr_writer :rate_type

        # List of filters that determine what kind of customer usage draws down a commit
        # or credit. A customer's usage needs to meet the condition of at least one of the
        # specifiers to contribute to a commit's or credit's drawdown. This field cannot
        # be used together with `applicable_product_ids` or `applicable_product_tags`.
        # Instead, to target usage by product or product tag, pass those values in the
        # body of `specifiers`.
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput])) }
        attr_accessor :specifiers

        sig do
          params(
            commit_id: String,
            customer_id: String,
            access_schedule:
              MetronomeSDK::V2::ContractEditCommitParams::AccessSchedule::OrHash,
            applicable_product_ids: T.nilable(T::Array[String]),
            applicable_product_tags: T.nilable(T::Array[String]),
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash,
            invoice_contract_id: String,
            invoice_schedule:
              MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule::OrHash,
            priority: T.nilable(Float),
            product_id: String,
            rate_type:
              MetronomeSDK::V2::ContractEditCommitParams::RateType::OrSymbol,
            specifiers:
              T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]),
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the commit to edit
          commit_id:,
          # ID of the customer whose commit is being edited
          customer_id:,
          access_schedule: nil,
          # Which products the commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          applicable_product_ids: nil,
          # Which tags the commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          applicable_product_tags: nil,
          # Optional configuration for commit hierarchy access control
          hierarchy_configuration: nil,
          # ID of contract to use for invoicing
          invoice_contract_id: nil,
          invoice_schedule: nil,
          # If multiple commits are applicable, the one with the lower priority will apply
          # first.
          priority: nil,
          product_id: nil,
          # If provided, updates the commit to use the specified rate type for current and
          # future invoices. Previously finalized invoices will need to be voided and
          # regenerated to reflect the rate type change.
          rate_type: nil,
          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          # Instead, to target usage by product or product tag, pass those values in the
          # body of `specifiers`.
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
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration,
              invoice_contract_id: String,
              invoice_schedule:
                MetronomeSDK::V2::ContractEditCommitParams::InvoiceSchedule,
              priority: T.nilable(Float),
              product_id: String,
              rate_type:
                MetronomeSDK::V2::ContractEditCommitParams::RateType::OrSymbol,
              specifiers:
                T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput]),
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

        # If provided, updates the commit to use the specified rate type for current and
        # future invoices. Previously finalized invoices will need to be voided and
        # regenerated to reflect the rate type change.
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::V2::ContractEditCommitParams::RateType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::V2::ContractEditCommitParams::RateType::TaggedSymbol
            )
          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::V2::ContractEditCommitParams::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V2::ContractEditCommitParams::RateType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
