import Mathlib

open CategoryTheory

universe u

/-- Given a Galois object representing the fiber of `X`, every fiber element is represented
by a unique morphism from that Galois object. -/
lemma unique_morphism_from_galois_for_fiber_element
    {C : Type u} [Category C]
    (F : C ⥤ FintypeCat)
    {X A : C}
    (a : F.obj A)
    (hA : Function.Bijective (fun (f : A ⟶ X) ↦ F.map f a))
    (x : F.obj X) :
    ∃! (f : A ⟶ X), F.map f a = x := by
  -- Define the function whose bijectivity we know
  let g : (A ⟶ X) → F.obj X := fun f => F.map f a
  have hBij : Function.Bijective g := hA
  have hSurj : Function.Surjective g := hBij.surjective
  have hInj : Function.Injective g := hBij.injective
  -- Use surjectivity to get existence of a preimage of `x`
  obtain ⟨f, hf⟩ := hSurj x
  refine ⟨f, ?_, ?_⟩
  · -- Show that `f` indeed maps to `x`
    simpa [g] using hf
  · -- Show uniqueness of such an `f`
    intro f' hf'
    apply hInj
    -- Show `g f' = g f` using the fact they both equal `x`
    have hf'₁ : g f' = x := by simpa [g] using hf'
    have hf₁  : g f  = x := by simpa [g] using hf
    simpa [hf'₁, hf₁]