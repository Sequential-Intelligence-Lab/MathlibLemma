import Mathlib

lemma Filter.atBot_eq_comap_coe_Iic_int (z : ℤ) :
    (Filter.atBot : Filter (Set.Iic z)) =
      Filter.comap (Subtype.val : Set.Iic z → ℤ) Filter.atBot := by
  sorry
