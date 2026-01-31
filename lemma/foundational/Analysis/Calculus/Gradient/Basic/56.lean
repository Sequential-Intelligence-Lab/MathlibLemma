import Mathlib

open Filter

/-- A realistic congruence lemma: if `f₁ = f₂`, then `grad f₁ = grad f₂`. -/
theorem gradient_congr
    {α β γ : Type*}
    (grad : (α → β) → α → γ)
    (f₁ f₂ : α → β)
    (l : Filter α)
    (h : f₁ = f₂) :
    grad f₁ = grad f₂ := by
  subst h
  rfl