import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma invariants_neg_closed
    [Ring k] [AddCommGroup V] [Module k V]
    (U : Submodule k V) (v : V) (hv : v ∈ U) :
    -v ∈ U := by
  have h_main : (-v : V) ∈ U := by
    have h1 : (-1 : k) • v ∈ U := U.smul_mem _ hv
    -- Since U is a submodule, it is closed under scalar multiplication. Hence, (-1 : k) • v ∈ U.
    have h2 : (-1 : k) • v = -v := by
      -- By definition of scalar multiplication in a module, (-1 : k) • v = -v.
      simp [smul_eq_mul]
      <;> simp_all [add_comm]
      <;> abel
    -- Using the above equality, we conclude that -v ∈ U.
    rw [h2] at h1
    exact h1
  
  exact h_main