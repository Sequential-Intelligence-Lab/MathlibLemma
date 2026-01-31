import Mathlib

lemma Real.tendsto_log_atTop_iff_coe :
    Filter.Tendsto (fun x : ℝ => Real.log x) Filter.atTop Filter.atTop ↔
      Filter.Tendsto (fun x : ℝ => x) (Filter.comap Real.exp Filter.atTop) Filter.atTop := by
  constructor
  · -- Forward direction: ignore the hypothesis, show RHS is true unconditionally.
    intro _
    -- Identify `comap Real.exp atTop` with `atTop`
    have hcomap :
        Filter.comap Real.exp (Filter.atTop : Filter ℝ) = Filter.atTop := by
      simpa using
        (Real.comap_exp_atTop :
          Filter.comap Real.exp (Filter.atTop : Filter ℝ) = Filter.atTop)
    -- After rewriting, this is just `tendsto_id`
    simpa [hcomap] using
      (Filter.tendsto_id : Filter.Tendsto (fun x : ℝ => x) Filter.atTop Filter.atTop)
  · -- Backward direction: ignore the hypothesis, use the standard lemma for `log`.
    intro _
    simpa using
      (Real.tendsto_log_atTop :
        Filter.Tendsto (fun x : ℝ => Real.log x) Filter.atTop Filter.atTop)