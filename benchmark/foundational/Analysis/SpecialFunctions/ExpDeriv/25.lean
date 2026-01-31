import Mathlib

open Filter Topology

namespace Complex

theorem tendsto_exp_atBot_real :
    Tendsto (fun x : ℝ => Real.exp x) atBot (𝓝 (0 : ℝ)) := by
  sorry

end Complex