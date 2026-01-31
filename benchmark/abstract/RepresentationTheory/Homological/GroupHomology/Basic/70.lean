import Mathlib

open AlgebraicTopology
open CategoryTheory

universe u

lemma groupHomology_inhomogeneousChains_d_square_zero'
    {k G : Type u} [CommRing k] [Group G]
    (A : Rep k G) (n : ℕ) :
    groupHomology.inhomogeneousChains.d (A := A) (n + 1) ≫
      groupHomology.inhomogeneousChains.d (A := A) n = 0 := by
  sorry