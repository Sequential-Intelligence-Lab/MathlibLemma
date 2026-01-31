import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.hasDerivAt_exp_pow (x : ℂ) (n : ℕ) :
    HasDerivAt (fun z => Complex.exp (z ^ n)) (n * x ^ (n - 1) * Complex.exp (x ^ n)) x := by
  have h_pow : HasDerivAt (fun z : ℂ => z ^ n) (n * x ^ (n - 1)) x := by
    simpa [mul_comm] using (hasDerivAt_pow n x)
  
  have h_exp : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (x ^ n)) (x ^ n) := by
    simpa using Complex.hasDerivAt_exp (x ^ n)
  
  have h_main : HasDerivAt (fun z : ℂ => Complex.exp (z ^ n)) (Complex.exp (x ^ n) * (n * x ^ (n - 1))) x := by
    have h1 : HasDerivAt (fun z : ℂ => z ^ n) (n * x ^ (n - 1)) x := h_pow
    have h2 : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (x ^ n)) (x ^ n) := h_exp
    have h3 : HasDerivAt (fun z : ℂ => Complex.exp (z ^ n)) (Complex.exp (x ^ n) * (n * x ^ (n - 1))) x := by
      -- Apply the chain rule to compose the two derivatives
      have h4 : HasDerivAt (fun z : ℂ => z ^ n) (n * x ^ (n - 1)) x := h1
      have h5 : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (x ^ n)) (x ^ n) := h2
      -- Use the chain rule to get the derivative of the composition
      have h6 : HasDerivAt (fun z : ℂ => Complex.exp (z ^ n)) (Complex.exp (x ^ n) * (n * x ^ (n - 1))) x := by
        -- Apply the chain rule: (exp ∘ (fun z => z ^ n))' = exp'(x ^ n) * (fun z => z ^ n)' = exp(x ^ n) * (n * x ^ (n - 1))
        have h7 : HasDerivAt (fun z : ℂ => Complex.exp (z ^ n)) (Complex.exp (x ^ n) * (n * x ^ (n - 1))) x :=
          h5.comp x h4
        exact h7
      exact h6
    exact h3
  
  have h_final : HasDerivAt (fun z => Complex.exp (z ^ n)) (n * x ^ (n - 1) * Complex.exp (x ^ n)) x := by
    have h₁ : (n : ℂ) * x ^ (n - 1) * Complex.exp (x ^ n) = Complex.exp (x ^ n) * (n * x ^ (n - 1)) := by
      ring_nf
      <;> simp [Complex.ext_iff, pow_two, pow_three, mul_assoc, mul_comm, mul_left_comm]
      <;> norm_num
      <;>
      (try norm_cast) <;>
      (try ring_nf) <;>
      (try simp_all [Complex.ext_iff, pow_two, pow_three, mul_assoc, mul_comm, mul_left_comm]) <;>
      (try norm_num) <;>
      (try linarith)
      <;>
      (try
        {
          simp_all [Complex.ext_iff, pow_two, pow_three, mul_assoc, mul_comm, mul_left_comm]
          <;> norm_num
          <;> ring_nf at *
          <;> norm_cast at *
          <;> simp_all [Complex.ext_iff, pow_two, pow_three, mul_assoc, mul_comm, mul_left_comm]
          <;> norm_num
          <;> linarith
        })
      <;>
      (try
        {
          simp_all [Complex.ext_iff, pow_two, pow_three, mul_assoc, mul_comm, mul_left_comm]
          <;> norm_num
          <;> ring_nf at *
          <;> norm_cast at *
          <;> simp_all [Complex.ext_iff, pow_two, pow_three, mul_assoc, mul_comm, mul_left_comm]
          <;> norm_num
          <;> linarith
        })
    have h₂ : HasDerivAt (fun z : ℂ => Complex.exp (z ^ n)) (Complex.exp (x ^ n) * (n * x ^ (n - 1))) x := h_main
    have h₃ : HasDerivAt (fun z : ℂ => Complex.exp (z ^ n)) (n * x ^ (n - 1) * Complex.exp (x ^ n)) x := by
      convert h₂ using 1
      <;> simp_all [h₁]
      <;> ring_nf
      <;> simp_all [Complex.ext_iff, pow_two, pow_three, mul_assoc, mul_comm, mul_left_comm]
      <;> norm_num
      <;>
      (try norm_cast) <;>
      (try ring_nf) <;>
      (try simp_all [Complex.ext_iff, pow_two, pow_three, mul_assoc, mul_comm, mul_left_comm]) <;>
      (try norm_num) <;>
      (try linarith)
    exact h₃
  
  exact h_final