import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CompHausLike.iso_of_mono_epi
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} (f : X ⟶ Y)
    (hf_mono : CategoryTheory.Mono (C := CompHausLike P) f)
    (hf_epi  : CategoryTheory.Epi  (C := CompHausLike P) f) :
    CategoryTheory.IsIso (C := CompHausLike P) f := by
  have h_is_iso : CategoryTheory.IsIso (C := CompHausLike P) f := by
    classical
    sorry
  
  exact h_is_iso