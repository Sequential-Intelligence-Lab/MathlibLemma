import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_periodic_comp {f : ℝ → ℝ} (hf : Function.Periodic f T) :
    Function.Periodic (fun x => √(f x)) T := by
  -- Use the definition of periodicity to rewrite the goal
  rw [Function.Periodic]
  -- Introduce an arbitrary real number x
  intro x
  -- Apply the periodicity of f to rewrite f(x + T)
  rw [hf]
  -- Simplify the expression using the fact that f(x + T) = f(x)
  <;> simp [hf]
  -- Use the property of square roots to conclude the proof
  <;> rw [sqrt_eq_iff_mul_self_eq]
  -- Verify the non-negativity condition
  <;> linarith [hf x]