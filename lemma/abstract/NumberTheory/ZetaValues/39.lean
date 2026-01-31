import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


lemma bernoulliFun_three_eq_cubic :
    bernoulliFun 3 = fun x : ℝ => x^3 - 3/2*x^2 + 1/2*x := by
  sorry

theorem algebra_8546 {f : ℝ → ℝ} (hf : f = fun x => (x^3 - 3 / 2 * x^2 + 1 / 2 * x)) :
    ∀ k : ℕ, (deriv^[k] f) 1 = (deriv^[k] (bernoulliFun 3)) 1 := by
  intro k
  have h_eq : f = (bernoulliFun 3 : ℝ → ℝ) := by
    funext x
    have hf' : f = fun y : ℝ => y ^ 3 - 3 / 2 * y ^ 2 + 1 / 2 * y := by
      exact hf
    have hb3 : (bernoulliFun 3 : ℝ → ℝ) = fun y : ℝ => y ^ 3 - 3 / 2 * y ^ 2 + 1 / 2 * y := by
      apply bernoulliFun_three_eq_cubic
    have h1 : f x = (bernoulliFun 3 : ℝ → ℝ) x := by
      rw [show f = fun y : ℝ => y ^ 3 - 3 / 2 * y ^ 2 + 1 / 2 * y by exact hf']
      rw [show (bernoulliFun 3 : ℝ → ℝ) = fun y : ℝ => y ^ 3 - 3 / 2 * y ^ 2 + 1 / 2 * y by exact hb3]
      all_goals simp
    exact h1
  have h_eq2 : (deriv^[k] f) = (deriv^[k] (bernoulliFun 3 : ℝ → ℝ)) := by
    rw [show f = (bernoulliFun 3 : ℝ → ℝ) by exact h_eq]
  rw [h_eq2]
  all_goals simp