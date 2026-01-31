import Mathlib

lemma LinearMap.trace_pow_commute
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M] [Module.Free R M] [Module.Finite R M]
    (f g : M →ₗ[R] M) (hfg : f.comp g = g.comp f) (n : ℕ) :
    LinearMap.trace R M ((f + g) ^ n) =
      Finset.sum (Finset.range (n + 1)) (fun k =>
        (Nat.choose n k : R) *
          LinearMap.trace R M ((f ^ k).comp (g ^ (n - k)))) := by
  sorry

lemma LinearMap.trace_pow_binom
    {R : Type*} [CommRing R]
    {M : Type*} [AddCommGroup M] [Module R M] [Module.Free R M] [Module.Finite R M]
    (f g : M →ₗ[R] M) (n : ℕ) :
    LinearMap.trace R M ((f + g) ^ n) =
      Finset.sum (Finset.range (n + 1)) (fun k =>
        (Nat.choose n k : R) *
          LinearMap.trace R M (f ^ k)) := by
  sorry