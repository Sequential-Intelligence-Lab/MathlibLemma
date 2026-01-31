import Mathlib

universe u

def groupHomology.inhomogeneousChains_X_succ
    {k : Type u} {G : Type u} [CommRing k] [Group G]
    (A : Rep k G) (n : ℕ) :
    (groupHomology.inhomogeneousChains (k := k) (G := G) A).X (n+1) ≅
      ModuleCat.of k ((Fin (n+1) → G) →₀ A) := by
  sorry