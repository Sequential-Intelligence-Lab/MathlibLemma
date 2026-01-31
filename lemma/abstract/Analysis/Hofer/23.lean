import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Tendsto.comp_tendsto_atTop_real
    {f : ℝ → ℝ} {u : ℕ → ℝ} {L : ℝ}
    (hf : Filter.Tendsto f Filter.atTop (nhds L))
    (hu : Filter.Tendsto u Filter.atTop Filter.atTop) :
    Filter.Tendsto (fun n => f (u n)) Filter.atTop (nhds L) := by
  -- Use the fact that the limit of f at infinity is L and the sequence u tends to infinity.
  have h := hf.comp hu
  -- Simplify the expression to show that the limit of f(u(n)) as n tends to infinity is L.
  simp only [Function.comp] at h
  -- Conclude the proof by exact application of the simplified hypothesis.
  exact h