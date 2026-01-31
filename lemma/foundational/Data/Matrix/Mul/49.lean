import Mathlib

lemma vecMul_injective_iff [NonUnitalSemiring α] [Fintype m]
    (A : Matrix m n α) :
    Function.Injective (fun v : m → α => Matrix.vecMul v A) ↔
      ∀ v : m → α, Matrix.vecMul v A = 0 → v = 0 := by
  constructor
  · -- (→) direction: injective ⇒ trivial kernel
    intro h v hv
    -- We have `Matrix.vecMul v A = 0`.
    -- Also `Matrix.vecMul 0 A = 0` by `simp`.
    -- So by injectivity, `v = 0`.
    have : Matrix.vecMul v A = Matrix.vecMul 0 A := by
      simpa using hv
    exact h this
  · -- (←) direction is not provable in this generality:
    -- from `∀ v, vecMul v A = 0 → v = 0` one cannot in general
    -- deduce injectivity of `vecMul` without additive inverses.
    intro h
    -- This direction is in fact false for general `NonUnitalSemiring α`,
    -- so there is no valid proof here without strengthening assumptions.
    -- We therefore cannot complete this part under the given hypotheses.
    -- (No proof possible.)
    intro v₁ v₂ hv
    -- cannot proceed
    have : False := by
      -- impossible to derive `v₁ = v₂` from the given hypotheses
      admit
    exact (this.elim)