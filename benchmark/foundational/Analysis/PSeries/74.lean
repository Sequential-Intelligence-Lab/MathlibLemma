import Mathlib

lemma Real.summable_pow_div_add_complex_iff (x : ℂ) (q k : ℕ) (hq : 1 < q) :
    Summable fun n : ℕ => ‖x / (n + k : ℂ) ^ q‖ := by
  sorry
