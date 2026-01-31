import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.comp_strictMono (hf : ConvexOn ℝ C f) {φ : ℝ → ℝ}
    (hφ : ConvexOn ℝ (f '' C) φ) (hmono : StrictMono φ) :
    ConvexOn ℝ C (fun x => φ (f x)) := by
  sorry
