import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.forall_iff_univ {n} (p : Fin n → Prop) :
    (∀ i, p i) ↔ ∀ i ∈ (Finset.univ : Finset (Fin n)), p i := by
  constructor <;> simp (config := { contextual := true }) [Finset.mem_univ]
  -- Forward direction: Assume ∀ i, p i holds, then show ∀ i ∈ Finset.univ, p i holds.
  -- Since Finset.univ contains all elements of Fin n, p i holds for all i in Finset.univ.
  <;> intro i
  -- Reverse direction: Assume ∀ i ∈ Finset.univ, p i holds, then show ∀ i, p i holds.
  -- Since every element of Fin n is in Finset.univ, p i holds for all i in Fin n.
  <;> simp (config := { contextual := true }) [Finset.mem_univ]
  <;> aesop