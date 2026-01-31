import Mathlib

open scoped unitInterval
open Filter

-- 61. A lemma: same at boundary 1
lemma bernsteinApproximation_limit_at_one
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : C(unitInterval, E)) :
    Tendsto
      (fun n : ℕ =>
        bernsteinApproximation n f
          ⟨1, by
            -- `unitInterval` is `Icc (0 : ℝ) 1`
            have h0 : (0 : ℝ) ≤ 1 := by norm_num
            exact ⟨h0, le_rfl⟩⟩)
      atTop
      (nhds (f
        ⟨1, by
          have h0 : (0 : ℝ) ≤ 1 := by norm_num
          exact ⟨h0, le_rfl⟩⟩)) := by
  sorry