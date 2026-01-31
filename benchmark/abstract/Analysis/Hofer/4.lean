import Mathlib

/-- If a sequence in a metric space has summable successive distances,
then it is a Cauchy sequence. -/
lemma CauchySeq_of_summable_dist_succ {X : Type*} [MetricSpace X]
    (u : ℕ → X)
    (h : Summable (fun n => dist (u n) (u (n+1)))) :
    CauchySeq u := by
  sorry
