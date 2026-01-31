import Mathlib

open CategoryTheory

universe u

lemma Rep_Tor_map_monoidal_whisker
    (k G : Type u) [CommRing k] [Group G] (n : ℕ)
    {X₁ X₂ Y₁ Y₂ : Rep k G}
    (f : X₁ ⟶ X₂) (g : Y₁ ⟶ Y₂) :
    (((Rep.coinvariantsTensor k G).map f).leftDerived n).app Y₁ ≫
      (((Rep.Tor k G n).obj X₂).map g) =
      ((Rep.Tor k G n).map f).app Y₁ ≫
        (((Rep.Tor k G n).obj X₂).map g) := by
  sorry