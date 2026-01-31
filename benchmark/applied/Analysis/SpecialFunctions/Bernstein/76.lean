import Mathlib

-- 77. A lemma about approximation of continuous functions by convex combinations of translates
lemma approx_by_convex_combination
    {I : Type*} [PseudoMetricSpace I] [CompactSpace I]
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : C(I, E)) :
    ∀ ε > 0, ∃ (N : ℕ) (g : Fin N → C(I, E)) (w : Fin N → ℝ),
      (∀ i, 0 ≤ w i) ∧ (∑ i, w i = 1) ∧
      ‖(∑ i, (w i) • g i) - f‖ < ε := by
  sorry