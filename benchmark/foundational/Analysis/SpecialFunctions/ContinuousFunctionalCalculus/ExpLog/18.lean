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
  sorry

end CFC