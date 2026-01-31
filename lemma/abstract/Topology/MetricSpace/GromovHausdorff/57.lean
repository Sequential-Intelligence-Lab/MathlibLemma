import Mathlib

/-- If a compact metric space is realized as a Gromov-Hausdorff limit of finite metric spaces,
then it is totally bounded by finite subsets.

In this formalization the hypothesis is a dummy existence statement and is not used:
the conclusion follows directly from compactness of `X`. -/
lemma GromovHausdorff.approx_by_finite_totallyBounded
    {X : Type*} [MetricSpace X] [CompactSpace X] [Nonempty X]
    (h : ∃ (Y : ℕ → Type*), True) :
    TotallyBounded (Set.univ : Set X) := by
  -- `h` is unused; total boundedness of `univ` follows from compactness of `X`.
  simpa using
    (isCompact_univ.totallyBounded :
      TotallyBounded (Set.univ : Set X))