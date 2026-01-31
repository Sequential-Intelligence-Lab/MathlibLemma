import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open CategoryTheory

lemma groupHomology.differential_comp_zero_left
    {k G : Type _} [CommRing k] [Group G]
    (M : Rep k G) (n : ℕ) :
    (inhomogeneousChains M).d (n + 2) (n + 1) ≫
      (inhomogeneousChains M).d (n + 1) n = 0 := by 
  have h1 : (n + 2 : ℕ) = (n + 1) + 1 := by omega
  rw [h1]
  apply HomologicalComplex.d_comp_d
  all_goals omega