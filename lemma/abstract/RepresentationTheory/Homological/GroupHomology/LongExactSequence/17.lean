import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open scoped Classical
open CategoryTheory

theorem groupHomology.longExact_exact_triple
    {k G : Type _} [CommRing k] [Group G]
    (X : ShortComplex (Rep k G))
    (hX : X.ShortExact)
    (n : ℕ) :
    IsIso
      ((groupHomology.map (MonoidHom.id G) X.f) n) ∧
    IsIso
      ((groupHomology.map (MonoidHom.id G) X.g) n) ∧
    IsIso
      (groupHomology.δ hX (n + 1) n rfl) := by
  sorry