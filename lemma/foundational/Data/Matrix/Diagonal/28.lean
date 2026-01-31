import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_pow
  [Fintype n] [DecidableEq n] [Semiring α]
  (d : n → α) (k : ℕ) :
    (Matrix.diagonal d) ^ k = Matrix.diagonal (fun i => (d i) ^ k) := by
  have h_diagonal_mul_diagonal : ∀ (f g : n → α), (Matrix.diagonal f) * (Matrix.diagonal g) = Matrix.diagonal (fun i => f i * g i) := by
    intro f g
    ext i j
    simp [Matrix.mul_apply, Matrix.diagonal_apply, Finset.sum_ite_eq']
    <;>
    (try cases i <;> cases j <;> simp_all [Matrix.diagonal_apply, Finset.sum_ite_eq'])
    <;>
    (try aesop)
    <;>
    (try ring_nf)
    <;>
    (try simp_all [Matrix.diagonal_apply, Finset.sum_ite_eq'])
  
  have h_base : (Matrix.diagonal d) ^ 0 = Matrix.diagonal (fun i => (d i) ^ 0) := by
    ext i j
    simp [Matrix.one_apply, Matrix.diagonal]
    <;>
    (try cases i <;> cases j <;> simp_all [Matrix.one_apply, Matrix.diagonal]) <;>
    (try aesop)
  
  have h_inductive_step : ∀ (k : ℕ), (Matrix.diagonal d) ^ k = Matrix.diagonal (fun i => (d i) ^ k) → (Matrix.diagonal d) ^ (k + 1) = Matrix.diagonal (fun i => (d i) ^ (k + 1)) := by
    intro k ih
    calc
      (Matrix.diagonal d) ^ (k + 1) = (Matrix.diagonal d) ^ k * Matrix.diagonal d := by
        simp [pow_succ]
      _ = (Matrix.diagonal (fun i => (d i) ^ k)) * Matrix.diagonal d := by rw [ih]
      _ = Matrix.diagonal (fun i => (d i) ^ k * d i) := by
        have h₁ : (Matrix.diagonal (fun i : n => (d i) ^ k)) * Matrix.diagonal d = Matrix.diagonal (fun i : n => (d i) ^ k * d i) := by
          rw [h_diagonal_mul_diagonal]
          <;> simp [mul_assoc]
          <;>
          (try ring_nf)
          <;>
          (try simp_all [Matrix.diagonal_apply])
          <;>
          (try aesop)
        rw [h₁]
      _ = Matrix.diagonal (fun i => (d i) ^ (k + 1)) := by
        congr
        ext i
        rw [pow_succ]
        <;>
        (try simp_all [Matrix.diagonal_apply])
        <;>
        (try ring_nf)
        <;>
        (try aesop)
  
  have h_main : (Matrix.diagonal d) ^ k = Matrix.diagonal (fun i => (d i) ^ k) := by
    have h : ∀ (k : ℕ), (Matrix.diagonal d) ^ k = Matrix.diagonal (fun i => (d i) ^ k) := by
      intro k
      induction k with
      | zero => simpa using h_base
      | succ k ih =>
        apply h_inductive_step
        exact ih
    apply h
  
  apply h_main