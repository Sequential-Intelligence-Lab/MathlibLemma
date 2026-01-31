import Mathlib

variable {ι F : Type*}

lemma OrthonormalBasis.equiv_det_eq_one_or_neg_one_real
    [Fintype ι]
    [DecidableEq ι]
    [NormedAddCommGroup F]
    [InnerProductSpace ℝ F]
    (b b' : OrthonormalBasis ι ℝ F) :
    Matrix.det (b.toBasis.toMatrix b'.toBasis) = (1 : ℝ) ∨
      Matrix.det (b.toBasis.toMatrix b'.toBasis) = -1 := by
  sorry