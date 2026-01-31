import Mathlib

def groupHomology.inhomogeneousChains_eval_one
    {k G : Type _} [CommRing k] [Group G]
    (M : Rep k G) :
    ((inhomogeneousChains M).X 1) ≅
      ModuleCat.of k ((Fin 1 → G) →₀ M.V) := by
  sorry