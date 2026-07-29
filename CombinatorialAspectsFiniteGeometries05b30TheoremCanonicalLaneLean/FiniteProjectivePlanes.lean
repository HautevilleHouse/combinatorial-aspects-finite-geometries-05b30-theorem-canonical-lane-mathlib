import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure FiniteProjectivePlanePackage where
  pointSet : Type u
  lineSet : Set (Set pointSet)
  order : ℕ
  incidenceProperties : Prop
  pointCount : ℕ
  lineCount : ℕ
  desarguesian : Prop

structure FiniteProjectivePlaneEvidence (P : FiniteProjectivePlanePackage) where
  incidencePropertiesClosed : P.incidenceProperties
  desarguesianClosed : P.desarguesian

def FiniteProjectivePlaneClosed (P : FiniteProjectivePlanePackage) : Prop :=
  P.incidenceProperties ∧ P.desarguesian

theorem finite_projective_plane_closed_from_evidence (P : FiniteProjectivePlanePackage)
    (E : FiniteProjectivePlaneEvidence P) : FiniteProjectivePlaneClosed P := by
  exact And.intro E.incidencePropertiesClosed E.desarguesianClosed

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse
