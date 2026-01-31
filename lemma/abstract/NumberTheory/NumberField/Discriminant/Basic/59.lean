import Mathlib

namespace HermiteTheorem

/-- A placeholder for the bound used in Hermite's theorem.
    Its concrete definition is not needed here. -/
noncomputable def boundOfDiscrBdd (N : ℕ) : ℝ := 1.0

/-- `boundOfDiscrBdd` is strictly positive for any `N ≥ 1`. -/
lemma boundOfDiscrBdd_pos {N : ℕ} (hN : 1 ≤ N) :
    0 < boundOfDiscrBdd N := by
  -- Show that `1.0` is just `1` in `ℝ`
  have h : (1.0 : ℝ) = 1 := by norm_num
  -- Use the standard fact `0 < 1` and rewrite
  simpa [boundOfDiscrBdd, h] using (zero_lt_one : (0 : ℝ) < 1)

end HermiteTheorem