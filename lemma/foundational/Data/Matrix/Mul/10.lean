import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_smul_left' [Fintype m] [Semiring α]
    (a : α) (v w : m → α) :
    (fun i => a • v i) ⬝ᵥ w = a • (v ⬝ᵥ w) := by
  have h1 : (fun i => a • v i) ⬝ᵥ w = ∑ i : m, (a • v i) * w i := by
    rfl
  
  have h2 : ∑ i : m, (a • v i) * w i = ∑ i : m, a * (v i * w i) := by
    apply Finset.sum_congr rfl
    intro i _
    calc
      (a • v i) * w i = (a * v i) * w i := by simp [smul_eq_mul]
      _ = a * (v i * w i) := by
        rw [mul_assoc]
        <;>
        simp [mul_assoc, mul_comm, mul_left_comm]
        <;>
        ring
  
  have h3 : ∑ i : m, a * (v i * w i) = a * ∑ i : m, v i * w i := by
    rw [Finset.mul_sum]
    <;>
    simp_all [mul_assoc]
    <;>
    try ring_nf
    <;>
    try simp_all [mul_assoc]
    <;>
    try ring_nf
  
  have h4 : a * ∑ i : m, v i * w i = a • (v ⬝ᵥ w) := by
    simp [smul_eq_mul, dotProduct]
    <;>
    ring_nf
    <;>
    simp_all [Finset.sum_mul]
    <;>
    try ring_nf
    <;>
    try simp_all [Finset.sum_mul]
  
  have h_main : (fun i => a • v i) ⬝ᵥ w = a • (v ⬝ᵥ w) := by
    calc
      (fun i => a • v i) ⬝ᵥ w = ∑ i : m, (a • v i) * w i := by rw [h1]
      _ = ∑ i : m, a * (v i * w i) := by rw [h2]
      _ = a * ∑ i : m, v i * w i := by rw [h3]
      _ = a • (v ⬝ᵥ w) := by rw [h4]
  
  apply h_main