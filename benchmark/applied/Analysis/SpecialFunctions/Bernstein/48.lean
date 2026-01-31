import Mathlib

-- 49. A lemma about the modulus of continuity of continuous functions on a compact set
lemma exists_modulus_of_continuity
    {X E : Type*} [TopologicalSpace X] [CompactSpace X]
    [MetricSpace X] [NormedAddCommGroup E]
    (f : C(X, E)) :
    ∃ ω : ℝ → ℝ, (∀ r ≥ 0, 0 ≤ ω r) ∧
      (∀ r₁ r₂, r₁ ≤ r₂ → ω r₁ ≤ ω r₂) ∧
      (∀ x y, ‖f x - f y‖ ≤ ω (dist x y)) ∧
      (∀ ε > 0, ∃ δ > 0, ω δ < ε) := by
  sorry
