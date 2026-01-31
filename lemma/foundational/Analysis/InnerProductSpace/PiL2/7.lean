import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma EuclideanSpace.single_ne_zero_iff
    {ι 𝕜 : Type*} [DecidableEq ι] [Zero 𝕜]
    {i : ι} {a : 𝕜} :
    (Pi.single i a : ι → 𝕜) ≠ 0 ↔ a ≠ 0 := by
  -- Construct the equivalence by proving both directions.
  constructor <;> intro h
  -- First direction: If the function is not zero, then the value at i is not zero.
  <;> simp_all [Pi.single_eq_zero_iff]
  -- Second direction: If the value at i is not zero, then the function is not zero.
  <;> aesop