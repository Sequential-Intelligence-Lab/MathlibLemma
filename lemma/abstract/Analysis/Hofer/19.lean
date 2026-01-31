import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem CauchySeq_of_tendsto_of_bdd_diff
    (u : ℕ → ℝ) (x : ℝ)
    (hlim : Filter.Tendsto u Filter.atTop (nhds x))
    (hbd : ∃ C : ℝ, ∀ n : ℕ, |u (n + 1) - u n| ≤ C) :
    CauchySeq u := by
  exact hlim.cauchySeq