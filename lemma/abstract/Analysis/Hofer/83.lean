import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma UniformContinuous_of_tendsto_atTop_atBot
    {f : ℝ → ℝ} {L₁ L₂ : ℝ}
    (h1 : Filter.Tendsto f Filter.atTop (nhds L₁))
    (h2 : Filter.Tendsto f Filter.atBot (nhds L₂)) :
    UniformContinuous f := by
  have h_main : UniformContinuous f := by sorry
  sorry