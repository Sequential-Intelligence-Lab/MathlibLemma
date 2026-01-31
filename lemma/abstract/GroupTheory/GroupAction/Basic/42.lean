import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.stabilizer_le_of_smul_eq
    [Group G] [MulAction G α] {a b : α} {g x : G}
    (h : g • a = b) (hx : x ∈ MulAction.stabilizer G b) :
    g⁻¹ * x * g ∈ MulAction.stabilizer G a := by
  -- From `hx : x ∈ stabilizer G b`, obtain `x • b = b`,
  -- then rewrite `b` as `g • a`.
  have hx' : x • (g • a) = g • a := by
    -- First read `hx` as an equality `x • b = b`
    have hx'' : x • b = b := by
      simpa [MulAction.stabilizer] using hx
    -- Rewrite `b` using `h : g • a = b`
    simpa [h] using hx''
  -- Show that `(g⁻¹ * x * g)` fixes `a`.
  have hfix : (g⁻¹ * x * g) • a = a := by
    calc
      (g⁻¹ * x * g) • a
          = (g⁻¹ * x) • (g • a) := by
            -- `(ab) • c = a • (b • c)` with `a = g⁻¹ * x`, `b = g`, `c = a`
            simpa [mul_assoc] using
              (mul_smul (g⁻¹ * x) g a)
      _   = g⁻¹ • (x • (g • a)) := by
            -- `(ab) • c = a • (b • c)` with `a = g⁻¹`, `b = x`, `c = g • a`
            simpa [mul_smul]
      _   = g⁻¹ • (g • a) := by
            simpa [hx']
      _   = a := by
            simp
  -- Conclude membership in the stabilizer of `a`.
  simpa [MulAction.stabilizer, hfix]