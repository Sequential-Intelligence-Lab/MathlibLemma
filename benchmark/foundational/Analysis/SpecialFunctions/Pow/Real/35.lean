import Mathlib

lemma Real.rpow_natCast_antitone_of_lt_one {x : ℝ} (hx0 : 0 < x) (hx1 : x < 1) :
    Antitone fun n : ℕ => x ^ (n : ℝ) := by
  sorry
