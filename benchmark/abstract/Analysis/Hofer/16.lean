import Mathlib

open Filter Topology

/-- If two real sequences are eventually within an `ℓ¹`-summable error, then they converge
or diverge together. -/
lemma tendsto_iff_tendsto_of_summable_diff {u v : ℕ → ℝ}
    (h : Summable (fun n => |u n - v n|)) :
    (∃ x, Tendsto u atTop (nhds x)) ↔
      ∃ y, Tendsto v atTop (nhds y) := by
  sorry