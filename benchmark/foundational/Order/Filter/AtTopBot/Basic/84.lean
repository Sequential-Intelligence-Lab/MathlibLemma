import Mathlib

lemma Filter.atTop_eq_comap_coe_Ioi_nat (n : ℕ) :
    (Filter.atTop : Filter (Set.Ioi n)) =
      Filter.comap (Subtype.val : Set.Ioi n → ℕ) Filter.atTop := by
  sorry
