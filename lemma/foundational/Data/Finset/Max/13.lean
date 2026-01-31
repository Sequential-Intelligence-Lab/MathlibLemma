import Mathlib

theorem Finset.min'_filter_gt {α} [LinearOrder α] (s : Finset α) (a : α)
    (hs : (s.filter fun x ↦ a < x).Nonempty) :
    a < (s.filter (fun x ↦ a < x)).min' hs := by
  classical
  -- Let t be the filtered set
  let t := s.filter fun x ↦ a < x
  -- The minimum is a member of t
  have hm : t.min' hs ∈ t := Finset.min'_mem t hs
  -- Unpack membership in a filter: x ∈ t ↔ x ∈ s ∧ a < x
  rcases Finset.mem_filter.mp hm with ⟨_, ha⟩
  -- The second component is exactly the desired inequality
  simpa [t] using ha