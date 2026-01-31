import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.det_conj_of_units
    {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (u : (Matrix n n R)ˣ) (A : Matrix n n R) :
    ((u : Matrix n n R) * A * (u⁻¹ : Matrix n n R)).det = A.det := by
  have h1 : ((u : Matrix n n R) * A * (u⁻¹ : Matrix n n R)).det = (u : Matrix n n R).det * A.det * (u⁻¹ : Matrix n n R).det := by
    calc
      ((u : Matrix n n R) * A * (u⁻¹ : Matrix n n R)).det = ((u : Matrix n n R) * A).det * (u⁻¹ : Matrix n n R).det := by
        rw [Matrix.det_mul]
      _ = (u : Matrix n n R).det * A.det * (u⁻¹ : Matrix n n R).det := by
        rw [Matrix.det_mul]
        <;> ring
        <;> simp_all [Matrix.det_mul]
        <;> ring
  
  have h2 : (u : Matrix n n R).det * (u⁻¹ : Matrix n n R).det = 1 := by
    have h : (u : Matrix n n R) * (u⁻¹ : Matrix n n R) = 1 := by
      simp [Units.ext_iff]
      <;>
      simp_all [Matrix.mul_apply, Finset.sum_ite_eq, Units.ext_iff]
      <;>
      aesop
    calc
      (u : Matrix n n R).det * (u⁻¹ : Matrix n n R).det = ((u : Matrix n n R) * (u⁻¹ : Matrix n n R)).det := by
        rw [Matrix.det_mul]
      _ = (1 : Matrix n n R).det := by rw [h]
      _ = 1 := by simp [Matrix.det_one]
  
  have h3 : (u : Matrix n n R).det * A.det * (u⁻¹ : Matrix n n R).det = A.det := by
    calc
      (u : Matrix n n R).det * A.det * (u⁻¹ : Matrix n n R).det = A.det * ((u : Matrix n n R).det * (u⁻¹ : Matrix n n R).det) := by
        -- Use the commutativity of multiplication in the commutative ring R to rearrange terms
        ring_nf
        <;> simp_all [mul_assoc, mul_comm, mul_left_comm]
        <;> ring_nf at *
        <;> simp_all [mul_assoc, mul_comm, mul_left_comm]
      _ = A.det * 1 := by rw [h2]
      _ = A.det := by simp [mul_one]
  
  have h4 : ((u : Matrix n n R) * A * (u⁻¹ : Matrix n n R)).det = A.det := by
    calc
      ((u : Matrix n n R) * A * (u⁻¹ : Matrix n n R)).det = (u : Matrix n n R).det * A.det * (u⁻¹ : Matrix n n R).det := by rw [h1]
      _ = A.det := by rw [h3]
  
  apply h4