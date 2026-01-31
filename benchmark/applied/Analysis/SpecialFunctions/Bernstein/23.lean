import Mathlib

-- 24. Uniform convergence on a subinterval `[a,b] ⊆ [0,1]`
lemma bernsteinApproximation_uniform_subinterval
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : ContinuousMap (Set.Icc (0 : ℝ) 1) E)
    (a b : ℝ) (hab : 0 ≤ a) (hba : b ≤ 1) (h : a ≤ b) :
    Filter.Tendsto
      (fun n : ℕ =>
        (fun x : {x // x ∈ Set.Icc a b} =>
          bernsteinApproximation n f
            ⟨(x : ℝ), by
              have hx : (x : ℝ) ∈ Set.Icc (0 : ℝ) 1 := by
                exact ⟨le_trans hab x.property.1, le_trans x.property.2 hba⟩
              simpa using hx⟩))
      Filter.atTop
      (nhds
        (fun x : {x // x ∈ Set.Icc a b} =>
          f
            ⟨(x : ℝ), by
              have hx : (x : ℝ) ∈ Set.Icc (0 : ℝ) 1 := by
                exact ⟨le_trans hab x.property.1, le_trans x.property.2 hba⟩
              simpa using hx⟩)) := by
  sorry