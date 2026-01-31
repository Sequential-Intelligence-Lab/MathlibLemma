import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_union_left {α β} [DecidableEq α] [DecidableEq β]
    [DecidableEq (α ⊕ β)]
    (s₁ s₂ : Finset α) (t : Finset β) :
    (s₁ ∪ s₂).disjSum t = (s₁.disjSum t) ∪ (s₂.disjSum t) := by
  ext x
  constructor <;> simp (config := { contextual := true }) [Finset.mem_disjSum, Finset.mem_union]
  <;> rcases x with (a | b) <;> simp_all [Finset.mem_disjSum, Finset.mem_union]
  <;> tauto