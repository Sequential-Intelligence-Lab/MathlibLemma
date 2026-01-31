import Mathlib

lemma Real.pow_strict_mono_on_pos (n : ℕ) (hn : 2 ≤ n) :
    StrictMonoOn (fun x : ℝ => x ^ n) {x | 0 < x} := by
  sorry
