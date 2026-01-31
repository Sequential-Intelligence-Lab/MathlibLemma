import Mathlib

-- 86. A lemma about the symmetry of Bernstein polynomials
lemma bernstein_symmetry
    (n k : ℕ) (x : unitInterval) :
    bernstein n k x =
      bernstein n (n - k)
        ⟨1 - (x : ℝ),
          by
            have hx : (0 : ℝ) ≤ x := x.property.left
            have hx' : (x : ℝ) ≤ 1 := x.property.right
            constructor
            · have h : 0 ≤ 1 - (x : ℝ) := by linarith
              simpa [sub_eq_add_neg] using h
            · have h : 1 - (x : ℝ) ≤ 1 := by linarith
              simpa using h ⟩ := by
  sorry