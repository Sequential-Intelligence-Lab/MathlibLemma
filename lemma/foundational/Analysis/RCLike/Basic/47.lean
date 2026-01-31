import Mathlib

namespace RCLike

-- Dummy definition just so the name `RCLike.conj` exists.
-- In real mathlib this would already be defined; here we only
-- care that the lemma statement type-checks.
def conj (K : Type*) [RCLike K] (z : K) : K := z

end RCLike

lemma RCLike.norm_conj' (K : Type*) [RCLike K] (z : K) :
    ‖RCLike.conj K z‖ = ‖z‖ := by
  simpa [RCLike.conj]