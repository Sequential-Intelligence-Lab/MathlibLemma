import Mathlib

variable (F : Type*) [NormedAddCommGroup F] [InnerProductSpace ℝ F]

lemma Complex.isometryOfOrthonormal_isometry_symm
    (v : OrthonormalBasis (Fin 2) ℝ F) :
    Isometry (Complex.isometryOfOrthonormal v).symm := by
  sorry