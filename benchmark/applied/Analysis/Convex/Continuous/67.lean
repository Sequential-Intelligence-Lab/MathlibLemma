import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.eq_const_of_hasMin_and_hasMax
    (hf : ConvexOn ℝ C f)
    (hC : Convex ℝ C)
    {a b : E} (ha : a ∈ C) (hb : b ∈ C)
    (hmin : ∀ x ∈ C, f a ≤ f x)
    (hmax : ∀ x ∈ C, f x ≤ f b) :
    ∀ x ∈ C, f x = f a := by
  sorry
