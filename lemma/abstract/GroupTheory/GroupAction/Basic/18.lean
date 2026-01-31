import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_eq_univ_of_finite
    [Group G] [MulAction G α] [Finite α] (a : α) :
    MulAction.orbit G a = Set.univ ↔ IsPretransitive G α := by
  constructor
  · intro horb
    -- Build a pretransitive structure from the fact that `orbit G a = univ`.
    refine ⟨?_⟩
    intro b c
    -- Get elements sending `a` to `b` and `c`.
    have hb' : b ∈ MulAction.orbit G a := by
      simpa [horb] using (Set.mem_univ b)
    have hc' : c ∈ MulAction.orbit G a := by
      simpa [horb] using (Set.mem_univ c)
    rcases (MulAction.mem_orbit_iff : b ∈ MulAction.orbit G a ↔ ∃ g : G, g • a = b).1 hb'
      with ⟨g1, hg1⟩
    rcases (MulAction.mem_orbit_iff : c ∈ MulAction.orbit G a ↔ ∃ g : G, g • a = c).1 hc'
      with ⟨g2, hg2⟩
    -- Use g = g2 * g1⁻¹ to send b to c.
    refine ⟨g2 * g1⁻¹, ?_⟩
    calc
      (g2 * g1⁻¹) • b
          = g2 • (g1⁻¹ • b) := by
              simpa [smul_smul]
      _   = g2 • (g1⁻¹ • (g1 • a)) := by simpa [hg1]
      _   = g2 • a := by
              -- simplify g1⁻¹ • (g1 • a) to a
              have : g1⁻¹ • (g1 • a) = a := by
                calc
                  g1⁻¹ • (g1 • a)
                      = (g1⁻¹ * g1) • a := by
                          simpa [smul_smul]
                  _   = (1 : G) • a := by simp
                  _   = a := by simp
              simpa [this]
      _   = c := hg2
  · intro hpre
    -- From pretransitivity, every point is in the orbit of `a`.
    apply Set.eq_univ_iff_forall.mpr
    intro b
    -- Get some g with g • a = b.
    obtain ⟨g, hg⟩ := hpre.exists_smul_eq a b
    -- That exactly means b is in the orbit of a.
    exact
      (MulAction.mem_orbit_iff : b ∈ MulAction.orbit G a ↔ ∃ g : G, g • a = b).2
        ⟨g, hg⟩