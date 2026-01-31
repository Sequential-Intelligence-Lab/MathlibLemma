import Mathlib

open CategoryTheory

variable {k G : Type _} [CommRing k] [Group G]

/-- Template constant: degree-2 object of some chain complex associated to `M`
    is isomorphic to a finitely supported function space. Definition omitted. -/
def groupHomology_inhomogeneousChains_eval_two
    (C : ChainComplex (ModuleCat k) ℕ)
    (M : ModuleCat k) :
    C.X 2 ≅ ModuleCat.of k ((Fin 2 → G) →₀ M) := by
  sorry