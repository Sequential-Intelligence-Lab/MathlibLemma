import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.atBot_mono_iff_nat {f : ℕ → ℕ} :
    Filter.comap f Filter.atBot = Filter.atBot ↔
      ∀ N, ∃ n ≤ N, f n ≤ N := by
  sorry