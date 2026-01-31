import Mathlib

lemma mulVec_injective_iff [Ring α] [Fintype n]
    (A : Matrix m n α) :
    Function.Injective (fun v => Matrix.mulVec A v) ↔
      ∀ v, Matrix.mulVec A v = 0 → v = 0 := by
  classical
  constructor
  · -- (→) Injective ⇒ only 0 maps to 0
    intro h_inj v hv
    -- mulVec sends 0 to 0
    have hz : Matrix.mulVec A (0 : n → α) = (0 : m → α) := by
      simpa using (Matrix.mulVec_zero (A := A))
    -- From A.mulVec v = 0 and A.mulVec 0 = 0, deduce A.mulVec v = A.mulVec 0
    have hveq : Matrix.mulVec A v = Matrix.mulVec A (0 : n → α) := by
      simpa [hz] using hv
    -- Injectivity gives v = 0
    exact h_inj hveq

  · -- (←) kernel {0} ⇒ injective
    intro hker v w hvw
    -- Consider v - w; mulVec is additive
    have h0 : Matrix.mulVec A (v - w) = (0 : m → α) := by
      -- A.mulVec (v - w) = A.mulVec v - A.mulVec w
      -- and A.mulVec v = A.mulVec w by hvw
      simpa [Matrix.mulVec_sub, hvw]
    -- By the kernel condition, v - w = 0
    have hw : v - w = (0 : n → α) := hker _ h0
    -- Hence v = w
    -- Using sub_eq_zero in the function space
    have : v = w := by
      -- pointwise subtraction zero implies equality
      apply sub_eq_zero.mp
      -- hw : v - w = 0, so just rewrite
      simpa using hw
    exact this