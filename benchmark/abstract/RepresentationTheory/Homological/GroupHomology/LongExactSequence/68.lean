import Mathlib

open CategoryTheory

lemma groupHomology.differential_comp_zero_left
    {k G : Type _} [CommRing k] [Group G]
    (M : Rep k G) (n : ℕ) :
    (inhomogeneousChains M).d (n + 2) (n + 1) ≫
      (inhomogeneousChains M).d (n + 1) n = 0 := by
  sorry