import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma disjSum_inter_right {α β} [DecidableEq α] [DecidableEq β]
    (s : Finset α) (t₁ t₂ : Finset β) :
    s.disjSum (t₁ ∩ t₂) = (s.disjSum t₁) ∩ (s.disjSum t₂) := by
  ext
  constructor <;> simp (config := { contextual := true }) [Finset.mem_disjSum, Finset.mem_inter]
  <;> aesop
  <;> aesop