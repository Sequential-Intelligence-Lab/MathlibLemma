import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Complex.closedBall_realSubring_subset
    {c : {z : ℂ // z.im = 0}} {r : ℝ} :
    (Subtype.val ⁻¹' (Metric.closedBall (c.1 : ℂ) r)
      : Set {z : ℂ // z.im = 0}) ⊆
      Metric.closedBall c r :=
by
  have h_main : ∀ (z : {z : ℂ // z.im = 0}), z ∈ (Subtype.val ⁻¹' (Metric.closedBall (c.1 : ℂ) r)) → z ∈ Metric.closedBall c r := by
    intro z hz
    have h₁ : (z.1 : ℂ) ∈ Metric.closedBall (c.1 : ℂ) r := by
      simpa [Set.mem_preimage] using hz
    have h₂ : dist (z.1 : ℂ) (c.1 : ℂ) ≤ r := by
      exact Metric.mem_closedBall.mp h₁
    have h₃ : dist z c ≤ r := by
      -- The distance in the subtype is the same as the distance in ℂ of the coerced elements.
      have h₄ : dist z c = dist (z.1 : ℂ) (c.1 : ℂ) := by
        simp [Complex.dist_eq, Real.dist_eq, Prod.dist_eq, Subtype.dist_eq]
        <;>
        simp_all [Complex.normSq]
        <;>
        ring_nf
        <;>
        norm_num
        <;>
        simp_all [Complex.ext_iff, pow_two]
        <;>
        nlinarith
      rw [h₄]
      exact h₂
    exact Metric.mem_closedBall.mpr h₃
  
  exact h_main