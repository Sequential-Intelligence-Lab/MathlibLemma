import Mathlib

lemma Filter.atTop_eq_iInf_principal_nat :
    (Filter.atTop : Filter ℕ) = ⨅ N : ℕ, Filter.principal {n | N ≤ n} := by
  sorry
