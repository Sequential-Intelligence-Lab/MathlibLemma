import Mathlib

/-! #### Measure / probability / truncation / integrability -/

open Filter
open scoped Topology

lemma tendsto_floor_pow_div_pow {c : ℝ} (hc : 1 < c) :
    Tendsto (fun n : ℕ => (⌊c^n⌋₊ : ℝ) / c^n) atTop (𝓝 (1 : ℝ)) := by
  sorry