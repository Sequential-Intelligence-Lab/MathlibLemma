import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

namespace Fin

/-- A placeholder definition so that `Fin.castIso` is a known constant. -/
def castIso {n m : ℕ} (h : n = m) : Fin n ≃ Fin m :=
  Equiv.cast (by cases h; rfl)

end Fin

lemma Fin.castIso_refl (n : ℕ) :
    Fin.castIso (rfl : n = n) = Equiv.refl (Fin n) := by
  dsimp [Fin.castIso]
  <;> rfl