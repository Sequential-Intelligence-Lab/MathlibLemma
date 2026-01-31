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
    (hmax : ∀ x ∈ C, f x ≤ f b)
    (h_eq : f a = f b) :
    ∀ x ∈ C, f x = f a := by
  intro x hx
  have h1 : f a ≤ f x := hmin x hx
  have h2 : f x ≤ f b := hmax x hx
  have h2' : f x ≤ f a := by simpa [h_eq] using h2
  exact le_antisymm h2' h1