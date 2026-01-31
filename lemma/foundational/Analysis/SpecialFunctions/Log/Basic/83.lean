import Mathlib

lemma Real.log_npow (x : ℝ) (n : ℕ) :
    Real.log (Nat.iterate (fun y => y * x) n 1) =
      Real.log (x ^ n) := by
  -- Strong auxiliary lemma: iterating `y ↦ y * x` n times starting from `a`
  -- gives `a * x^n`.
  have hIter :
      ∀ (n : ℕ) (a : ℝ),
        Nat.iterate (fun y => y * x) n a = a * x ^ n := by
    intro n
    induction' n with n ih
    · -- n = 0
      intro a
      simp
    · -- n → n + 1
      intro a
      -- Use the definition of `Nat.iterate` and the induction hypothesis
      simp [Nat.iterate, ih, pow_succ, mul_left_comm, mul_comm, mul_assoc]
  -- Specialize the auxiliary lemma to `a = 1`.
  have h' : Nat.iterate (fun y => y * x) n 1 = x ^ n := by
    simpa [one_mul] using hIter n 1
  -- Rewrite the argument of `Real.log` using `h'`.
  simpa [h']