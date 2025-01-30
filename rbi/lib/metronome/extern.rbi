# typed: strong

module Metronome
  module Extern
    abstract!

    sig { params(blk: T.proc.void).void }
    def sorbet!(&blk); end
  end
end
