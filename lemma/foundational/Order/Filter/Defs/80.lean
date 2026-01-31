import Mathlib

lemma Filter.NeBot_iff_eventually {α} (f : Filter α) :
    Filter.NeBot f ↔ ∀ p : α → Prop, (∀ᶠ x in f, p x) → ∃ x, p x := by
  constructor
  · -- (→) direction
    intro hf p hp
    classical
    by_contra h
    -- h : ¬ ∃ x, p x
    have hforall : ∀ x, ¬ p x := by
      intro x
      by_contra hx
      exact h ⟨x, hx⟩
    -- p is pointwise equal to False, so "eventually p" is "eventually False"
    have hFalse : ∀ᶠ x in f, False := by
      have hfun : (fun x => p x) = (fun _ : α => False) := by
        funext x
        apply propext
        constructor
        · intro hx
          exact (hforall x) hx
        · intro hx
          exact False.elim hx
      simpa [hfun] using hp
    -- But "eventually False" characterizes the bottom filter
    have hbot : f = ⊥ := (Filter.eventually_false_iff_eq_bot).1 hFalse
    exact hf.ne hbot
  · -- (←) direction
    intro H
    refine ⟨?_ne⟩
    intro hbot
    -- In the bottom filter, "eventually False" holds
    have hEvBot : ∀ᶠ x in (⊥ : Filter α), False := by
      simp
    -- Transport along f = ⊥
    have hEv : ∀ᶠ x in f, False := by
      simpa [hbot] using hEvBot
    -- Apply H with p := False
    have hExists : ∃ x, False := H (fun _ => False) hEv
    rcases hExists with ⟨x, hx⟩
    exact hx