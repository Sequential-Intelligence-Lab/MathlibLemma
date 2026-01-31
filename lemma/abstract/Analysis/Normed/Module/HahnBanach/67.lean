import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma weak_convergence_implies_pointwise
    {𝕜 E : Type _}
    [NormedField 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    (u : ℕ → E) (x : E)
    (h : Filter.Tendsto u Filter.atTop (nhds x)) :
    ∀ f : E →L[𝕜] 𝕜,
      Filter.Tendsto (fun n => f (u n)) Filter.atTop (nhds (f x)) := by
  intro f
  have h₁ : Continuous f := by
    exact f.continuous
  
  have h₂ : Filter.Tendsto (fun n => f (u n)) Filter.atTop (nhds (f x)) := by
    have h₃ : Filter.Tendsto (fun n => u n) Filter.atTop (nhds x) := h
    have h₄ : ContinuousAt f x := h₁.continuousAt
    have h₅ : Filter.Tendsto (f ∘ (fun n => u n)) Filter.atTop (nhds (f x)) :=
      h₄.tendsto.comp h₃
    -- The composition `f ∘ (fun n => u n)` is exactly `fun n => f (u n)`
    have h₆ : (f ∘ (fun n => u n)) = (fun n => f (u n)) := by
      funext n
      <;> simp [Function.comp_apply]
    rw [h₆] at h₅
    exact h₅
  
  exact h₂