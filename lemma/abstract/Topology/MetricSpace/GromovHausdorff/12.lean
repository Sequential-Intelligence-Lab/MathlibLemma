import Mathlib

/-- Every closed and totally bounded subset of `GHSpace` is compact. -/
lemma GromovHausdorff.compact_of_closed_totallyBounded
    (s : Set GromovHausdorff.GHSpace)
    (hs_closed : IsClosed s)
    (hs_tb : TotallyBounded s) :
    IsCompact s := by
  -- This follows from the general result that in a complete metric space,
  -- every closed and totally bounded set is compact.
  exact isCompact_of_totallyBounded_isClosed hs_tb hs_closed