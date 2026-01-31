import Mathlib

open Topology

variable {E : Type _}

theorem taylor_isLittleO_pow_succ
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {f : ℝ → E} {x₀ : ℝ} {n : ℕ}
    (hf : ContDiff ℝ (n + 1) f) :
    (fun x => f x - taylorWithinEval f n Set.univ x₀ x)
      =o[𝓝 x₀] fun x => (x - x₀) ^ (n + 1) := by
  sorry