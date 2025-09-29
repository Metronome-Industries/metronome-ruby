# frozen_string_literal: true

module MetronomeSDK
  [MetronomeSDK::Internal::Type::BaseModel, *MetronomeSDK::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, MetronomeSDK::Internal::AnyHash) } }
  end

  MetronomeSDK::Internal::Util.walk_namespaces(MetronomeSDK::Models).each do |mod|
    case mod
    in MetronomeSDK::Internal::Type::Enum | MetronomeSDK::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  MetronomeSDK::Internal::Util.walk_namespaces(MetronomeSDK::Models)
                              .lazy
                              .grep(MetronomeSDK::Internal::Type::Union)
                              .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  BaseThresholdCommit = MetronomeSDK::Models::BaseThresholdCommit

  BaseUsageFilter = MetronomeSDK::Models::BaseUsageFilter

  Commit = MetronomeSDK::Models::Commit

  CommitHierarchyConfiguration = MetronomeSDK::Models::CommitHierarchyConfiguration

  CommitRate = MetronomeSDK::Models::CommitRate

  CommitSpecifier = MetronomeSDK::Models::CommitSpecifier

  CommitSpecifierInput = MetronomeSDK::Models::CommitSpecifierInput

  Contract = MetronomeSDK::Models::Contract

  ContractV2 = MetronomeSDK::Models::ContractV2

  ContractWithoutAmendments = MetronomeSDK::Models::ContractWithoutAmendments

  Credit = MetronomeSDK::Models::Credit

  CreditTypeData = MetronomeSDK::Models::CreditTypeData

  Discount = MetronomeSDK::Models::Discount

  EventTypeFilter = MetronomeSDK::Models::EventTypeFilter

  HierarchyConfiguration = MetronomeSDK::Models::HierarchyConfiguration

  ID = MetronomeSDK::Models::ID

  NotificationArchiveParams = MetronomeSDK::Models::NotificationArchiveParams

  NotificationCreateParams = MetronomeSDK::Models::NotificationCreateParams

  NotificationRetrieveParams = MetronomeSDK::Models::NotificationRetrieveParams

  Notifications = MetronomeSDK::Models::Notifications

  NotificationUpdateParams = MetronomeSDK::Models::NotificationUpdateParams

  Override = MetronomeSDK::Models::Override

  OverrideTier = MetronomeSDK::Models::OverrideTier

  OverwriteRate = MetronomeSDK::Models::OverwriteRate

  PackageCreateParams = MetronomeSDK::Models::PackageCreateParams

  PaymentGateConfig = MetronomeSDK::Models::PaymentGateConfig

  PaymentGateConfigV2 = MetronomeSDK::Models::PaymentGateConfigV2

  PaymentListParams = MetronomeSDK::Models::PaymentListParams

  PrepaidBalanceThresholdConfiguration = MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration

  PrepaidBalanceThresholdConfigurationV2 = MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2

  PropertyFilter = MetronomeSDK::Models::PropertyFilter

  ProService = MetronomeSDK::Models::ProService

  Rate = MetronomeSDK::Models::Rate

  RecurringCommitSubscriptionConfig = MetronomeSDK::Models::RecurringCommitSubscriptionConfig

  ScheduledCharge = MetronomeSDK::Models::ScheduledCharge

  ScheduleDuration = MetronomeSDK::Models::ScheduleDuration

  SchedulePointInTime = MetronomeSDK::Models::SchedulePointInTime

  SpendThresholdConfiguration = MetronomeSDK::Models::SpendThresholdConfiguration

  SpendThresholdConfigurationV2 = MetronomeSDK::Models::SpendThresholdConfigurationV2

  Subscription = MetronomeSDK::Models::Subscription

  Tier = MetronomeSDK::Models::Tier

  UpdateBaseThresholdCommit = MetronomeSDK::Models::UpdateBaseThresholdCommit

  V1 = MetronomeSDK::Models::V1

  V2 = MetronomeSDK::Models::V2
end
