import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.castLT_val {n : ℕ} {i : Fin n} {h : i.val < n} :
    (Fin.castLT i h).val = i.val := by
  -- Simplify the expression using the definition of `Fin.castLT` and properties of `Fin.val`
  simp [Fin.castLT, Fin.val]
  -- The `simp` tactic will automatically apply the relevant definitions and properties to show the equality
  <;> simp_all
  <;> simp_all
  <;> simp_all