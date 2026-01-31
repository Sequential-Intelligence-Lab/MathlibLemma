import Mathlib

/-
Invariant and forward invariant sets
-/

lemma Flow.IsSemiconjugacy.comp_right'
    {τ α β γ : Type _}
    [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ]
    (ϕ : Flow τ α) (ψ : Flow τ β) (χ : Flow τ γ)
    {π : α → β} {ρ : β → γ}
    (hπ : Flow.IsSemiconjugacy π ϕ ψ)
    (hρ : Flow.IsSemiconjugacy ρ ψ χ) :
    Flow.IsSemiconjugacy (ρ ∘ π) ϕ χ := by
  -- This follows from `Flow.IsSemiconjugacy.comp`
  sorry