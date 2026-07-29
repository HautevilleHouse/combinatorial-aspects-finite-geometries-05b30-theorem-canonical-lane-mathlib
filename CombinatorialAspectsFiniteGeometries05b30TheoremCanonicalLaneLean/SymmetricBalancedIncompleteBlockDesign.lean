import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure SymmetricBIBDPackage where
  pointSet : Type u
  blockSet : Type v
  incidence : pointSet → blockSet → Prop
  parameters : (Nat × Nat × Nat)  -- (v, k, λ)
  regularity : ∀ (p : pointSet), (∃ (b : blockSet), incidence p b)
  symmetryProperty : (v = k ∧ v = λ) ∨ (v > k ∧ v > λ)
  intersectionProperties : Prop
  bruckRyserChowlaTheorem : Prop

structure SymmetricBIBDEvidence (S : SymmetricBIBDPackage) where
  parametersConsistent : S.parameters.1 > 0 ∧ S.parameters.2 > 0 ∧ S.parameters.3 > 0
  regularityClosed : S.regularity
  symmetryPropertyClosed : S.symmetryProperty
  intersectionPropertiesClosed : S.intersectionProperties
  bruckRyserChowlaTheoremClosed : S.bruckRyserChowlaTheorem

def SymmetricBIBDClosed (S : SymmetricBIBDPackage) : Prop :=
  S.regularity ∧ S.symmetryProperty ∧ S.intersectionProperties ∧ S.bruckRyserChowlaTheorem

theorem symmetric_bibd_closed_from_evidence
    (S : SymmetricBIBDPackage) (E : SymmetricBIBDEvidence S) :
    SymmetricBIBDClosed S := by
  exact And.intro E.regularityClosed
    (And.intro E.symmetryPropertyClosed
      (And.intro E.intersectionPropertiesClosed E.bruckRyserChowlaTheoremClosed))

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse