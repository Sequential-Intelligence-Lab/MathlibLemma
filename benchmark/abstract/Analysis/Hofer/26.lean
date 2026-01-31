import Mathlib

/-- If the norm of a sequence in a normed group is summable, then the sequence converges to 0. -/
lemma tendsto_zero_of_summable_norm
    {G : Type*} [NormedGroup G] [Zero G]
    (u : ℕ → G) (h : Summable (fun n => ‖u n‖)) :
    Filter.Tendsto u Filter.atTop (nhds (0 : G)) := by
  sorry