# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractEditCreditParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::ContractEditCreditParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

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

        # Optional configuration for credit hierarchy access control
        sig { returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration)) }
        attr_reader :hierarchy_configuration

        sig do
          params(
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash
          ).void
        end
        attr_writer :hierarchy_configuration

        # If multiple commits are applicable, the one with the lower priority will apply
        # first.
        sig { returns(T.nilable(Float)) }
        attr_accessor :priority

        sig { returns(T.nilable(String)) }
        attr_reader :product_id

        sig { params(product_id: String).void }
        attr_writer :product_id

        # If provided, updates the credit to use the specified rate type for current and
        # future invoices. Previously finalized invoices will need to be voided and
        # regenerated to reflect the rate type change.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V2::ContractEditCreditParams::RateType::OrSymbol
            )
          )
        end
        attr_reader :rate_type

        sig do
          params(
            rate_type:
              MetronomeSDK::V2::ContractEditCreditParams::RateType::OrSymbol
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
            credit_id: String,
            customer_id: String,
            access_schedule:
              MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::OrHash,
            applicable_product_ids: T.nilable(T::Array[String]),
            applicable_product_tags: T.nilable(T::Array[String]),
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash,
            priority: T.nilable(Float),
            product_id: String,
            rate_type:
              MetronomeSDK::V2::ContractEditCreditParams::RateType::OrSymbol,
            specifiers:
              T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]),
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
          # Optional configuration for credit hierarchy access control
          hierarchy_configuration: nil,
          # If multiple commits are applicable, the one with the lower priority will apply
          # first.
          priority: nil,
          product_id: nil,
          # If provided, updates the credit to use the specified rate type for current and
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
              credit_id: String,
              customer_id: String,
              access_schedule:
                MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule,
              applicable_product_ids: T.nilable(T::Array[String]),
              applicable_product_tags: T.nilable(T::Array[String]),
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration,
              priority: T.nilable(Float),
              product_id: String,
              rate_type:
                MetronomeSDK::V2::ContractEditCreditParams::RateType::OrSymbol,
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
                MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule,
                MetronomeSDK::Internal::AnyHash
              )
            end

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
                T.any(
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::AddScheduleItem,
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
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::RemoveScheduleItem,
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
                  MetronomeSDK::V2::ContractEditCreditParams::AccessSchedule::UpdateScheduleItem,
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

        # If provided, updates the credit to use the specified rate type for current and
        # future invoices. Previously finalized invoices will need to be voided and
        # regenerated to reflect the rate type change.
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::V2::ContractEditCreditParams::RateType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::V2::ContractEditCreditParams::RateType::TaggedSymbol
            )
          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::V2::ContractEditCreditParams::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V2::ContractEditCreditParams::RateType::TaggedSymbol
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
