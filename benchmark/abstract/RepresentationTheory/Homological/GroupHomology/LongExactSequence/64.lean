import Mathlib

def groupHomology.inhomogeneousChains_eval_zero
    {k G : Type _} [CommRing k] [Group G]
    (M : Rep k G) :
    ((inhomogeneousChains M).X 0) ≅ M.V := by
  sorry