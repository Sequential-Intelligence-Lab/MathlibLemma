import Mathlib

lemma RCLike.conj_eq_self_iff_real (K : Type*) [RCLike K] (z : K) :
    (star z = z) ↔ ∃ r : ℝ, (r : K) = z := by
  sorry