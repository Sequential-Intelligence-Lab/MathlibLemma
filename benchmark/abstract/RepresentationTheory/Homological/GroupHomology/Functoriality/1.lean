import Mathlib

universe u

lemma groupHomology.chainsMap_surjective_f
    {k G H : Type u} [CommRing k] [Group G] [Group H]
    {A : Rep k G} {B : Rep k H}
    (f : G →* H) (φ : A ⟶ (Action.res _ f).obj B)
    (hf : Function.Surjective f) (hφ : Function.Surjective φ.hom)
    (n : ℕ) :
    Function.Surjective ((groupHomology.chainsMap f φ).f n) := by
  sorry