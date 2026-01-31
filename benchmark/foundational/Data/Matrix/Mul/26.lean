import Mathlib

open Matrix

lemma dotProduct_self_nonneg
    {m : Type _} [Fintype m]
    (v : m → ℝ) :
    0 ≤ dotProduct v v := by
  sorry