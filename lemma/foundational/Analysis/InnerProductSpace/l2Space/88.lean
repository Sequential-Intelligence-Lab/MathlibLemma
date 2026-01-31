import Mathlib

theorem HilbertBasis.repr_eq_iff
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) (x y : E) :
    b.repr x = b.repr y ↔ x = y := by
  -- `b.repr` is a linear isometry, hence injective
  have h_inj : Function.Injective b.repr := b.repr.injective
  constructor
  · intro h
    exact h_inj h
  · intro h
    simpa [h]