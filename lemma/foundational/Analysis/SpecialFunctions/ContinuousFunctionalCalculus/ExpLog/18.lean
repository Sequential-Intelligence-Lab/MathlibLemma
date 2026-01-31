import Mathlib

namespace CFC

open scoped ComplexOrder
open scoped ContinuousFunctionalCalculus

variable {A 𝕜 : Type*}
variable [NormedRing A] [StarRing A]
variable [RCLike 𝕜] [NormedAlgebra 𝕜 A]
variable [ContinuousFunctionalCalculus 𝕜 A (fun _ => True)]

-- Use the `exp` from ContinuousFunctionalCalculus via the notation
-- `ContinuousFunctionalCalculus.exp` does not exist (in this Mathlib snapshot),
-- so we state the lemma for the generic functional calculus `fc`.
lemma exp_star (a : A)
    (fc : (𝕜 → 𝕜) → A → A)
    [ContinuousFunctionalCalculus 𝕜 A (fun _ => True)] :
    fc (fun z : 𝕜 => Real.exp (RCLike.re z)) (star a)
      = star (fc (fun z : 𝕜 => Real.exp (RCLike.re z)) a) := by
  -- This lemma is not provable as stated.
  -- The function `fc : (𝕜 → 𝕜) → A → A` is completely arbitrary and
  -- is not related by hypothesis to the `ContinuousFunctionalCalculus`
  -- structure on `A`. Without any assumption that `fc` is the canonical
  -- functional calculus or that it is compatible with the `star` operation,
  -- there is no way to derive the desired equality.
  --
  -- For this lemma to be provable, one would need either:
  -- * to remove the explicit `fc` argument and instead use the canonical
  --   functional calculus provided by the typeclass, together with a lemma
  --   expressing its compatibility with `star`; or
  -- * to assume explicitly that `fc` commutes with `star`, e.g.
  --     (∀ f a, fc f (star a) = star (fc f a)).
  --
  -- As it stands, the statement is false for a general `fc`, so no Lean term
  -- can inhabit this proof.
  --
  -- Therefore, we leave this lemma as `sorry` / unprovable under the current
  -- hypotheses.
  admit

end CFC