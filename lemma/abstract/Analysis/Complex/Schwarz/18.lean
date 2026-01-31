import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma eqOn_id_of_two_fixed_points_in_unitDisk
    {f : ℂ → ℂ}
    (hDiff : DifferentiableOn ℂ f (Metric.ball 0 1))
    (h_maps : Set.MapsTo f (Metric.ball 0 1) (Metric.ball 0 1))
    {z₁ z₂ : ℂ} (hz₁ : z₁ ∈ Metric.ball 0 1) (hz₂ : z₂ ∈ Metric.ball 0 1) (hne : z₁ ≠ z₂)
    (hfix₁ : f z₁ = z₁) (hfix₂ : f z₂ = z₂) :
    Set.EqOn f id (Metric.ball 0 1) := by
  have h_main : ∀ z ∈ Metric.ball 0 1, f z = z := by
    sorry
  
  have h_final : Set.EqOn f id (Metric.ball 0 1) := by
    intro z hz
    have h₁ : f z = z := h_main z hz
    simp [h₁]
    <;>
    aesop
  
  exact h_final