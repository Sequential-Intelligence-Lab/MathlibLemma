import Mathlib

/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma riemannZeta_tendsto_one_from_right :
    Filter.Tendsto
      (fun s : ℝ => riemannZeta (s : ℂ))
      (nhdsWithin (1 : ℝ) (Set.Ioi (1 : ℝ)))
      (nhds (0 : ℂ)) := by
  sorry