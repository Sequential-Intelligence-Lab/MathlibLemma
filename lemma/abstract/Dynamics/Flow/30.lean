import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Flow.map_add_left {τ α} [AddMonoid τ] [TopologicalSpace τ] [ContinuousAdd τ]
    [TopologicalSpace α] (ϕ : Flow τ α) (t₁ t₂ : τ) :
    ϕ (t₁ + t₂) = fun x => ϕ t₁ (ϕ t₂ x) := by
  have h_main : ∀ (x : α), (ϕ (t₁ + t₂)) x = (fun x => ϕ t₁ (ϕ t₂ x)) x := by
    intro x
    have h1 : (ϕ (t₁ + t₂)) x = ϕ.toFun (t₁ + t₂) x := rfl
    have h2 : (fun x => ϕ t₁ (ϕ t₂ x)) x = ϕ.toFun t₁ (ϕ.toFun t₂ x) := rfl
    have h3 : ϕ.toFun (t₁ + t₂) x = ϕ.toFun t₁ (ϕ.toFun t₂ x) := by
      apply ϕ.map_add
    simp_all [h1, h2, h3]
    <;>
    aesop
  
  have h_final : ϕ (t₁ + t₂) = fun x => ϕ t₁ (ϕ t₂ x) := by
    funext x
    apply h_main
  
  apply h_final