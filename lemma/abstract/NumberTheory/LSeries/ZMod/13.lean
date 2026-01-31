import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

namespace Zeta

/-- Abstract Hurwitz zeta function over `ℂ`. This is a placeholder constant. -/
noncomputable def hurwitzZeta : ℂ → ℂ → ℂ := fun _ _ => 0

end Zeta

open Complex

/-! ### General analytic / meromorphic function lemmas -/
lemma hurwitzZeta_conj (a s : ℂ) :
    Zeta.hurwitzZeta (star a) (star s) =
      star (Zeta.hurwitzZeta a s) := by
  simp [Zeta.hurwitzZeta, Complex.ext_iff]