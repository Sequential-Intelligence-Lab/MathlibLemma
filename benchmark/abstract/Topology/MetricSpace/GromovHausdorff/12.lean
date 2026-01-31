import Mathlib

/-- Every closed and totally bounded subset of `GHSpace` is compact. -/
lemma GromovHausdorff.compact_of_closed_totallyBounded
    (s : Set GromovHausdorff.GHSpace)
    (hs_closed : IsClosed s)
    (hs_tb : TotallyBounded s) :
    IsCompact s := by
  sorry
