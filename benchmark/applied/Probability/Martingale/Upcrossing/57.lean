import Mathlib

open MeasureTheory

lemma upcrossings_mono_in_b
    {Ω} {a b₁ b₂ : ℝ} {f : ℕ → Ω → ℝ} (hb : b₁ ≤ b₂) {ω : Ω} :
    upcrossings a b₂ f ω ≤ upcrossings a b₁ f ω := by
  sorry