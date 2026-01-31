import Mathlib

lemma Filter.atTop_eq_comap_coe_Ici_nat (n : ℕ) :
    (Filter.atTop : Filter (Set.Ici n)) =
      Filter.comap (Subtype.val : Set.Ici n → ℕ) Filter.atTop := by
  sorry
