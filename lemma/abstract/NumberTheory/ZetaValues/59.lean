import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma bernoulliFun_strictMono_large (k : ℕ) (hk : 2 ≤ k) :
    ∃ R, StrictMonoOn (bernoulliFun k) (Set.Ici R) := by
  have h_main : ∃ (R : ℝ), StrictMonoOn (bernoulliFun k) (Set.Ici R) := by
    use 0
    <;>
    sorry
  obtain ⟨R, hR⟩ := h_main
  refine' ⟨R, _⟩
  exact hR