import Mathlib

lemma sqrt_pos_iff' {x : ℝ} :
    0 < √x ↔ 0 < x := by
  -- `√x` is notation for `Real.sqrt x`
  simpa using Real.sqrt_pos