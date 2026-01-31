import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.tendsto_atTop_of_monotone_nat {f : ℕ → ℕ}
    (hf : Monotone f)
    (h_unbounded : ∀ M, ∃ n, M ≤ f n) :
    Filter.Tendsto f Filter.atTop Filter.atTop := by
  -- Simplify the goal using the definition of tendsto and the properties of the filter atTop.
  simp only [Filter.tendsto_atTop, Filter.eventually_atTop, gt_iff_lt, and_imp, exists_prop]
  -- Introduce an arbitrary natural number M.
  intro M
  -- Use the unbounded property of f to find an n such that M ≤ f n.
  obtain ⟨n, hn⟩ := h_unbounded (M + 1)
  -- Use the monotonicity of f to show that for all m ≥ n, f m ≥ M.
  use n
  intro m hm
  -- Since f is monotone, f m ≥ f n.
  have := hf hm
  -- Since f n ≥ M + 1, we have f m ≥ M + 1.
  -- Therefore, f m ≥ M.
  linarith