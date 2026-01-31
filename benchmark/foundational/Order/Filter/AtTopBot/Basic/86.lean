import Mathlib

lemma Filter.atBot_eq_comap_coe_Iio_int (z : ℤ) :
    (Filter.atBot : Filter (Set.Iio z)) =
      Filter.comap (Subtype.val : Set.Iio z → ℤ) Filter.atBot := by
  sorry
