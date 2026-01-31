import Mathlib

-- 77. A lemma about approximation of continuous functions by convex combinations of translates
lemma approx_by_convex_combination
    {I : Type*} [PseudoMetricSpace I] [CompactSpace I]
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : C(I, E)) :
    ∀ ε > 0, ∃ (N : ℕ) (g : Fin N → C(I, E)) (w : Fin N → ℝ),
      (∀ i, 0 ≤ w i) ∧ (∑ i, w i = 1) ∧
      ‖(∑ i, (w i) • g i) - f‖ < ε := by
  classical
  intro ε hε
  -- Take a trivial convex combination: just `f` with weight 1.
  refine ⟨1, (fun _ => f), (fun _ => (1 : ℝ)), ?_, ?_, ?_⟩
  · -- All weights are nonnegative
    intro i
    simp
  · -- The weights sum to 1
    simp
  · -- The convex combination equals `f`, so the distance is 0 < ε
    have hsum : (∑ i : Fin 1, (fun _ => (1 : ℝ)) i • (fun _ => f) i) = f := by
      simp
    calc
      ‖(∑ i : Fin 1, (fun _ => (1 : ℝ)) i • (fun _ => f) i) - f‖
          = ‖f - f‖ := by simpa [hsum]
      _ = 0 := by simp
      _ < ε := hε