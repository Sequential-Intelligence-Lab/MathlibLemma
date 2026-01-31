import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.sprod_pure_pure {α β} (a : α) (b : β) :
    (pure a : Filter α) ×ˢ (pure b : Filter β) =
      pure (a, b) := by
  apply Filter.ext
  intro x
  constructor <;> simp [and_imp]
  <;> aesop
  <;> aesop