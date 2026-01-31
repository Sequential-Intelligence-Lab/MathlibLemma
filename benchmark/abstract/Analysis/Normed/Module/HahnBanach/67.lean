import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- 68. Weak convergence implies pointwise convergence for continuous linear functionals. -/
lemma weak_convergence_implies_pointwise
    {𝕜 E : Type _}
    [NormedField 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    (u : ℕ → E) (x : E)
    (h : Filter.Tendsto u Filter.atTop (nhds x)) :
    ∀ f : E →L[𝕜] 𝕜,
      Filter.Tendsto (fun n => f (u n)) Filter.atTop (nhds (f x)) := by
  sorry