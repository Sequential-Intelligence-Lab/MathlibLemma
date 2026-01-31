import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
open MonoidAlgebra


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 68. If `ρ` is faithful then `asAlgebraHom` is injective on `of k G g`
lemma Representation.asAlgebraHom_of_injective
    {k G V : Type*} [CommSemiring k] [Monoid G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V)
    (hρ : Function.Injective fun g : G => ρ g) :
    Function.Injective fun g : G => ρ.asAlgebraHom (MonoidAlgebra.of k G g) := by
  intro g h h_eq
  have eq1 : ρ.asAlgebraHom (MonoidAlgebra.of k G g) = ρ g := by
    simp [Representation.asAlgebraHom]
  have eq2 : ρ.asAlgebraHom (MonoidAlgebra.of k G h) = ρ h := by
    simp [Representation.asAlgebraHom]
  have h1 : (fun g : G => ρ.asAlgebraHom (MonoidAlgebra.of k G g)) g = (fun g : G => ρ.asAlgebraHom (MonoidAlgebra.of k G g)) h := h_eq
  simp only [Function.comp_apply] at h1
  rw [eq1] at h1
  rw [eq2] at h1
  exact hρ h1