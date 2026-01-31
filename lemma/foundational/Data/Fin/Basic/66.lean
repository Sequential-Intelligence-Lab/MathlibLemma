import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

def Fin.castIso {m n : ℕ} (h : m = n) : Fin m ≃ Fin n := by
  -- Use the identity function as the isomorphism since Fin m and Fin n are the same set when m = n.
  rw [h]
  -- The identity function is both injective and surjective, hence bijective.
  <;> simp [Fin.ext_iff]
  <;> aesop