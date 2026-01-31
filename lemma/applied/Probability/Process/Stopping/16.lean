import Mathlib

-- 17. If a process has bounded paths, so does its stopped process.
lemma stoppedProcess_bddRange
  {Ω ι β : Type*} [LinearOrder ι] [Nonempty ι]
  [Semiring ι] [NormedRing β]
  (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (h : ∀ ω, Bornology.IsBounded (Set.range fun i => u i ω)) :
  ∀ ω, Bornology.IsBounded (Set.range fun i => MeasureTheory.stoppedProcess u τ i ω) := by
  intro ω
  -- Show the range of the stopped process is included in the range of the original process.
  have hsub :
      Set.range (fun i => MeasureTheory.stoppedProcess u τ i ω) ⊆
        Set.range (fun i => u i ω) := by
    intro x hx
    rcases hx with ⟨i, rfl⟩
    classical
    -- By unfolding `stoppedProcess`, we see it is some `u j ω`, for a suitable `j`.
    -- `simp` finds the witness index and closes the existential.
    simpa [MeasureTheory.stoppedProcess] 
  -- Use monotonicity of boundedness under subset.
  exact (h ω).subset hsub