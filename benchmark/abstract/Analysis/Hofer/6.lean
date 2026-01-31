import Mathlib

/-- A sequence in a metric space is Cauchy if the distance between any two far enough terms
is bounded by a geometric sequence. -/
lemma CauchySeq_of_le_geometric' {X : Type*} [MetricSpace X]
    (u : ℕ → X) (ε : ℝ) (q : ℝ)
    (hq : 0 < q) (hq1 : q < 1)
    (h : ∀ m n, m ≤ n → dist (u m) (u n) ≤ ε * q^m) :
    CauchySeq u := by
  sorry
