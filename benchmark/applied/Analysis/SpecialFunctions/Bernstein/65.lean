import Mathlib

-- 66. A lemma about sup norm convergence equivalent to uniform convergence on `I`
lemma tendsto_supNorm_iff_uniform
    {I : Type*} [TopologicalSpace I] [CompactSpace I]
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : ℕ → C(I, E)) (g : C(I, E)) :
    Filter.Tendsto (fun n => ‖f n - g‖) Filter.atTop (nhds (0 : ℝ)) ↔
      Filter.Tendsto f Filter.atTop (nhds g) := by
  sorry