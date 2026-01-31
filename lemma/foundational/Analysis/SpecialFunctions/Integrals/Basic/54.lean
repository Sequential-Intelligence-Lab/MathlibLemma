import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem intervalIntegrable_min (a b : ℝ) (f g : ℝ → ℝ)
    (hf : IntervalIntegrable f volume a b)
    (hg : IntervalIntegrable g volume a b) :
    IntervalIntegrable (fun x => min (f x) (g x)) volume a b := by
  have h1 : IntervalIntegrable (fun x : ℝ => f x + g x) volume a b := by
    apply hf.add
    exact hg
  have h2 : IntervalIntegrable (fun x : ℝ => f x - g x) volume a b := by
    apply hf.sub
    exact hg
  have h3 : IntervalIntegrable (fun x : ℝ => abs (f x - g x)) volume a b := by
    apply h2.abs
  have h6 : ∀ x : ℝ, min (f x) (g x) = ((f x + g x) - abs (f x - g x)) / 2 := by
    intro x
    cases le_total (f x) (g x) with
    | inl h =>
      have h7 : abs (f x - g x) = g x - f x := by
        rw [abs_of_nonpos]
        linarith
        all_goals linarith
      rw [h7]
      have h8 : min (f x) (g x) = f x := by
        apply min_eq_left
        linarith
      rw [h8]
      ring_nf
    | inr h =>
      have h7 : abs (f x - g x) = f x - g x := by
        rw [abs_of_nonneg]
        linarith
        all_goals linarith
      rw [h7]
      have h8 : min (f x) (g x) = g x := by
        apply min_eq_right
        linarith
      rw [h8]
      all_goals ring_nf
  have h7 : IntervalIntegrable (fun x : ℝ => ((f x + g x) - abs (f x - g x)) / 2) volume a b := by
    have h4 : IntervalIntegrable (fun x : ℝ => (f x + g x) - abs (f x - g x)) volume a b := by
      apply h1.sub
      exact h3
    have h8 : IntervalIntegrable (fun x : ℝ => ((f x + g x) - abs (f x - g x)) / 2) volume a b := by
      apply h4.div_const
    exact h8
  have h9 : IntervalIntegrable (fun x : ℝ => min (f x) (g x)) volume a b := by
    have h10 : ∀ x : ℝ, min (f x) (g x) = ((f x + g x) - abs (f x - g x)) / 2 := h6
    have h11 : (fun x : ℝ => min (f x) (g x)) = (fun x : ℝ => ((f x + g x) - abs (f x - g x)) / 2) := by
      funext x
      exact h10 x
    rw [h11]
    exact h7
  exact h9