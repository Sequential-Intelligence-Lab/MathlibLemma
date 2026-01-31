import Mathlib

lemma Real.cauchy_mul_eq_iff {x y z : ℝ} :
    (x * y).cauchy = z.cauchy ↔ x.cauchy * y.cauchy = z.cauchy := by
  constructor
  · intro h
    calc
      x.cauchy * y.cauchy = (x * y).cauchy := by
        simpa [Real.cauchy_mul] using (Real.cauchy_mul x y).symm
      _ = z.cauchy := h
  · intro h
    calc
      (x * y).cauchy = x.cauchy * y.cauchy := by
        simpa [Real.cauchy_mul] using (Real.cauchy_mul x y)
      _ = z.cauchy := h