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
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T.all(T::Boolean, mod) } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { T.all(Integer, mod) } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { T.all(Float, mod) } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { T.all(Symbol, mod) } }
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

  V1 = MetronomeSDK::Models::V1

  V2 = MetronomeSDK::Models::V2
end
