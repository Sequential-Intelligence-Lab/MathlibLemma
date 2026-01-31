import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- Determinant of real skew-symmetric odd-dimensional matrix is zero. -/
lemma Matrix.det_skewSymmetric_odd
    {n : ℕ} (hodd : Odd n)
    (A : Matrix (Fin n) (Fin n) ℝ)
    (hA : Matrix.transpose A = -A) :
    Matrix.det A = 0 := by
  -- Step 1: relate det A to det (-A) via transpose and skew-symmetry
  have hEq : Matrix.det A = (-1 : ℝ) ^ n * Matrix.det A := by
    calc
      Matrix.det A = Matrix.det (Matrix.transpose A) := by
        -- det A = det Aᵀ
        simpa using (Matrix.det_transpose (A := A)).symm
      _ = Matrix.det (-A) := by
        -- use skew-symmetry Aᵀ = -A
        simpa [hA]
      _ = (-1 : ℝ) ^ n * Matrix.det A := by
        -- determinant of -A
        simpa [Fintype.card_fin] using (Matrix.det_neg (A := A))
  -- Step 2: for odd n, (-1)^n = -1
  have hpow : (-1 : ℝ) ^ n = -1 := by
    simpa using hodd.neg_one_pow
  -- So det A = - det A
  have hEq' : Matrix.det A = - Matrix.det A := by
    simpa [hpow] using hEq
  -- Step 3: from det A = - det A, deduce 2 * det A = 0
  have hsum : Matrix.det A + Matrix.det A = 0 := by
    -- Add det A to both sides of the equality
    have h := congrArg (fun x => x + Matrix.det A) hEq'
    -- Right side becomes -det A + det A = 0 via simp
    simpa using h
  have h2 : (2 : ℝ) * Matrix.det A = 0 := by
    simpa [two_mul] using hsum
  -- Step 4: use that 2 ≠ 0 in ℝ to conclude det A = 0
  have h2ne : (2 : ℝ) ≠ 0 := two_ne_zero
  have hdet : Matrix.det A = 0 := by
    have hzero_or : (2 : ℝ) = 0 ∨ Matrix.det A = 0 :=
      mul_eq_zero.mp h2
    rcases hzero_or with h2zero | hdet'
    · exact (h2ne h2zero).elim
    · exact hdet'
  exact hdet