import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Representation.linHom_trivial_trivial
    {k G V W : Type*} [CommSemiring k] [Group G]
    [AddCommMonoid V] [Module k V]
    [AddCommMonoid W] [Module k W] :
    Representation.linHom
      (ρV := Representation.trivial k G V)
      (ρW := Representation.trivial k G W)
    = Representation.trivial k G (V →ₗ[k] W) := by
  ext f
  -- We need to show that the linear homomorphism f between the trivial representations is trivial.
  -- This means that f should commute with the group action, which is trivial in this case.
  constructor <;> simp [Representation.trivial, Representation.linHom, ModuleHom]
  -- Simplify the expressions to show that f is indeed trivial.
  <;> aesop