import Mathlib

/-- If a compact metric space is realized as a Gromov-Hausdorff limit of finite metric spaces,
then it is totally bounded by finite subsets. -/
lemma GromovHausdorff.approx_by_finite_totallyBounded
    {X : Type*} [MetricSpace X] [CompactSpace X] [Nonempty X]
    (h : ∃ (Y : ℕ → Type*), True) :
    TotallyBounded (Set.univ : Set X) := by
  sorry
