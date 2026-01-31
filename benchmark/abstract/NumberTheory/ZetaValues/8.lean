import Mathlib

lemma bernoulliFun_monotone_on_Icc_two (k : ℕ) (hk : 2 ≤ k) :
    MonotoneOn (fun x : ℝ => bernoulliFun k x) (Set.Icc (0 : ℝ) 1) → False := by
  sorry