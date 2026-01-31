import Mathlib

lemma Filter.atBot_eq_iInf_principal_int :
    (Filter.atBot : Filter ℤ) = ⨅ N : ℤ, Filter.principal {n | n ≤ N} := by
  sorry
