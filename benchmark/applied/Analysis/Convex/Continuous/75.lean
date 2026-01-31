import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConcaveOn.between_values
    (hf : ConcaveOn ℝ C f)
    (hC : Convex ℝ C)
    {x y} (hx : x ∈ C) (hy : y ∈ C) {t : ℝ} (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    min (f x) (f y) ≤ f (t • x + (1 - t) • y) := by
  sorry
