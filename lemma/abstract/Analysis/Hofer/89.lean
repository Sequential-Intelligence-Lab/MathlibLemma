import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open Filter Topology

/-- If a sequence satisfies a linear recurrence with contraction coefficient,
then it converges. -/
theorem exists_limit_of_linear_recurrence_contraction
    (u : ℕ → ℝ) (a b : ℝ)
    (hcon : |a| < 1)
    (hrec : ∀ n, u (n + 1) = a * u n + b) :
    ∃ L : ℝ, Tendsto u Filter.atTop (nhds L) := by
  have h1 : a ≠ 1 := by
    by_contra h
    have h2 : |a| = 1 := by
      rw [show a = 1 by linarith]
      norm_num
    linarith
  use b / (1 - a)
  have h6 : Tendsto (fun (n : ℕ) => a ^ n) atTop (nhds 0) := by
    apply tendsto_pow_atTop_nhds_zero_of_norm_lt_one
    simpa using hcon
  have eq1 : ∀ (n : ℕ), u n = b / (1 - a) + a ^ n * (u 0 - b / (1 - a)) := by
    intro n
    induction n with
    | zero =>
      norm_num
      all_goals
        field_simp [(show (1 - a : ℝ) ≠ 0 by
          by_contra h
          have ha1 : a = 1 := by linarith
          tauto
        )]
    | succ n ih =>
      have eq2 : u (n + 1) = a * u n + b := hrec n
      rw [eq2]
      rw [ih]
      field_simp [(show (1 - a : ℝ) ≠ 0 by
        by_contra h
        have ha1 : a = 1 := by linarith
        tauto
      )]
      ring_nf
  have h7 : Tendsto (fun (n : ℕ) => a ^ n * (u 0 - b / (1 - a))) atTop (nhds 0) := by
    have h8 : Tendsto (fun (n : ℕ) => a ^ n) atTop (nhds 0) := h6
    have h9 : Tendsto (fun (n : ℕ) => a ^ n * (u 0 - b / (1 - a))) atTop (nhds (0 * (u 0 - b / (1 - a)))) := by
      apply Tendsto.mul
      exact h8
      all_goals
        simp
    have h10 : 0 * (u 0 - b / (1 - a)) = (0 : ℝ) := by ring
    rw [h10] at h9
    exact h9
  have h8 : Tendsto u atTop (nhds (b / (1 - a))) := by
    have eq2 : u = fun (n : ℕ) => b / (1 - a) + a ^ n * (u 0 - b / (1 - a)) := by
      funext n
      exact eq1 n
    rw [eq2]
    have h11 : Tendsto (fun (n : ℕ) => (b / (1 - a) : ℝ)) atTop (nhds (b / (1 - a))) := by
      apply tendsto_const_nhds
    have h12 : Tendsto (fun (n : ℕ) => a ^ n * (u 0 - b / (1 - a)) ) atTop (nhds (0 : ℝ)) := h7
    have h13 : Tendsto (fun (n : ℕ) => (b / (1 - a) : ℝ) + a ^ n * (u 0 - b / (1 - a)) ) atTop (nhds (b / (1 - a) + (0 : ℝ))) := by
      apply Tendsto.add
      exact h11
      exact h12
    have h14 : (b / (1 - a) + (0 : ℝ)) = (b / (1 - a) : ℝ) := by ring
    rw [h14] at h13
    exact h13
  exact h8