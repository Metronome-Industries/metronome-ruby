# frozen_string_literal: true

module MetronomeSDK
  [MetronomeSDK::Internal::Type::BaseModel, *MetronomeSDK::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, MetronomeSDK::Internal::AnyHash) } }
  end

  [
    *MetronomeSDK::Internal::Type::Enum.included_modules,
    *MetronomeSDK::Internal::Type::Union.included_modules
  ].each do |cls|
    cls.constants.each do |name|
      case cls.const_get(name)
      in true | false
        cls.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T.all(T::Boolean, cls) } }
        cls.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
      in Integer
        cls.define_sorbet_constant!(:TaggedInteger) { T.type_alias { T.all(Integer, cls) } }
        cls.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
      in Float
        cls.define_sorbet_constant!(:TaggedFloat) { T.type_alias { T.all(Float, cls) } }
        cls.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
      in Symbol
        cls.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { T.all(Symbol, cls) } }
        cls.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
      else
      end
    end
  end

  BaseUsageFilter = MetronomeSDK::Models::BaseUsageFilter

  Commit = MetronomeSDK::Models::Commit

  ContractWithoutAmendments = MetronomeSDK::Models::ContractWithoutAmendments

  Credit = MetronomeSDK::Models::Credit

  CreditTypeData = MetronomeSDK::Models::CreditTypeData

  Discount = MetronomeSDK::Models::Discount

  EventTypeFilter = MetronomeSDK::Models::EventTypeFilter

  ID = MetronomeSDK::Models::ID

  Override = MetronomeSDK::Models::Override

  PropertyFilter = MetronomeSDK::Models::PropertyFilter

  ProService = MetronomeSDK::Models::ProService

  Rate = MetronomeSDK::Models::Rate

  ScheduledCharge = MetronomeSDK::Models::ScheduledCharge

  ScheduleDuration = MetronomeSDK::Models::ScheduleDuration

  SchedulePointInTime = MetronomeSDK::Models::SchedulePointInTime

  Tier = MetronomeSDK::Models::Tier

  V1 = MetronomeSDK::Models::V1

  V2 = MetronomeSDK::Models::V2
end
