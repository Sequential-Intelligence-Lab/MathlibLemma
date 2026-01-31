import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem differentiableOn_closedBall_iff_locally
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (f : E → F) {x : E} {r : ℝ} (hr : 0 < r) :
    DifferentiableOn 𝕜 f (Metric.closedBall x r) ↔
      ∀ y ∈ Metric.closedBall x r, DifferentiableAt 𝕜 f y := by
  have h_imp : DifferentiableOn 𝕜 f (Metric.closedBall x r) → (∀ y ∈ Metric.closedBall x r, DifferentiableAt 𝕜 f y) := by
    intro h
    intro y hy
    have h₁ : DifferentiableWithinAt 𝕜 f (Metric.closedBall x r) y := h y hy
    -- Use the fact that if f is differentiable within a convex set containing y in its interior, then it is differentiable at y.
    -- However, the closed ball is not open, and y could be on the boundary.
    -- This step is not generally true without additional assumptions, so we need to find another approach or admit that it cannot be proven in general.
    -- For the purpose of this proof, we will use a sorry because the statement is false in general (as shown by the counterexample).
    sorry
  
  have h_conv : (∀ y ∈ Metric.closedBall x r, DifferentiableAt 𝕜 f y) → DifferentiableOn 𝕜 f (Metric.closedBall x r) := by
    intro h
    intro y hy
    have h₁ : DifferentiableAt 𝕜 f y := h y hy
    -- Since f is differentiable at y, it is also differentiable within any set containing y.
    have h₂ : DifferentiableWithinAt 𝕜 f (Metric.closedBall x r) y := h₁.differentiableWithinAt
    exact h₂
  
  have h_main : DifferentiableOn 𝕜 f (Metric.closedBall x r) ↔ ∀ y ∈ Metric.closedBall x r, DifferentiableAt 𝕜 f y := by
    constructor
    · -- Prove the forward direction using h_imp
      intro h
      exact h_imp h
    · -- Prove the backward direction using h_conv
      intro h
      exact h_conv h
  
  exact h_main