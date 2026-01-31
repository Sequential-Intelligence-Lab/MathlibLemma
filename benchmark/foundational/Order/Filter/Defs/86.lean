import Mathlib

lemma Filter.sprod_principal_principal {α β}
    (s : Set α) (t : Set β) :
    (Filter.principal s : Filter α) ×ˢ (Filter.principal t : Filter β) =
      Filter.principal (s ×ˢ t) := by
  sorry