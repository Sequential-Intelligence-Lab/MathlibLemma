import Mathlib

/-- If `f : ℝ → ℝ` is continuous and strictly monotone, then its inverse on the image
is continuous. -/
lemma continuous_invOn_of_strictMono
    {f : ℝ → ℝ} (hcont : Continuous f) (hmono : StrictMono f) :
    ∃ g : Set.range f → ℝ,
      (Continuous g) ∧
      (∀ x : ℝ, g ⟨f x, ⟨x, rfl⟩⟩ = x) := by
  sorry