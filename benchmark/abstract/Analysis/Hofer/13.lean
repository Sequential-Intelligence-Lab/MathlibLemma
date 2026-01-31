import Mathlib

/-- A sequence of reals with summable absolute differences is Cauchy. -/
lemma CauchySeq_of_summable_abs_sub (u : ℕ → ℝ)
    (h : Summable (fun n => |u (n+1) - u n|)) :
    CauchySeq u := by
  sorry
