import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure FiniteAffinePlanePackage where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  orderParameter : Nat
  parallelLines : lineSet → lineSet → Prop
  affineAxioms : Prop
  parallelismEquivalence : Prop
  numberProperties : orderParameter = 2 ∨ orderParameter = 3 ∨ orderParameter ≥ 4

structure FiniteAffinePlaneEvidence (A : FiniteAffinePlanePackage) where
  affineAxiomsClosed : A.affineAxioms
  parallelismEquivalenceClosed : A.parallelismEquivalence
  numberPropertiesClosed : A.numberProperties

def FiniteAffinePlaneClosed (A : FiniteAffinePlanePackage) : Prop :=
  A.affineAxioms ∧ A.parallelismEquivalence ∧ A.numberProperties

theorem finite_affine_plane_closed_from_evidence
    (A : FiniteAffinePlanePackage) (E : FiniteAffinePlaneEvidence A) :
    FiniteAffinePlaneClosed A := by
  exact And.intro E.affineAxiomsClosed
    (And.intro E.parallelismEquivalenceClosed E.numberPropertiesClosed)

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse