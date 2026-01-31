import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.orbit_image_eq_of_surjective
    [Group G] [Mul G] [MulAction G α] [MulAction G β]
    (f : α → β) (hf : ∀ (g : G) (a : α), f (g • a) = g • f a)
    (hsurj : Function.Surjective f) (a : α) :
    f '' MulAction.orbit G a = MulAction.orbit G (f a) := by
  ext
  constructor <;> simp_all [MulAction.orbit]
  <;> aesop
  <;> aesop