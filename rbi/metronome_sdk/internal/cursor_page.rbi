# typed: strong

module MetronomeSDK
  module Internal
    class CursorPage
      include MetronomeSDK::Internal::Type::BasePage

      Elem = type_member

      sig { returns(String) }
      attr_accessor :next_page_

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
