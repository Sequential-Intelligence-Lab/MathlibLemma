import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConcaveOn.sqrt (hf : ConcaveOn ℝ C f) (hpos : ∀ x ∈ C, 0 ≤ f x) :
    ConcaveOn ℝ C fun x => Real.sqrt (f x) := by
  sorry

/-! ### Lipschitz / Hölder refinements -/
