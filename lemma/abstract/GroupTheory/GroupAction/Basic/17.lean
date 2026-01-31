import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.finite_orbit_of_finite_type
    [Group G] [MulAction G α] [Finite G] (a : α) :
    (MulAction.orbit G a).Finite := by
  have h_orbit_eq_image : MulAction.orbit G a = (Set.univ : Set G).image (fun g : G => g • a) := by
    apply Set.ext
    intro x
    simp [MulAction.mem_orbit, Set.mem_image]
    <;>
    aesop
  
  have h_finite_univ : Set.Finite (Set.univ : Set G) := by
    exact Set.finite_univ
  
  have h_finite_image : Set.Finite ((Set.univ : Set G).image (fun g : G => g • a)) := by
    apply Set.Finite.image
    exact h_finite_univ
  
  have h_main : Set.Finite (MulAction.orbit G a) := by
    rw [h_orbit_eq_image]
    exact h_finite_image
  
  exact Set.finite_coe_iff.mpr h_main