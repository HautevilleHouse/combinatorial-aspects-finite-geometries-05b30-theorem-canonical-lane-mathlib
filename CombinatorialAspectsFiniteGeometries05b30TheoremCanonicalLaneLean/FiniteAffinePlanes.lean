import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure FiniteAffinePlanePackage where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  anyTwoPointsUniqueLine : Prop
  parallelPostulate : Prop
  threeNonCollinear : Prop
  constantLineSize : Prop

structure FiniteAffinePlaneEvidence (A : FiniteAffinePlanePackage) where
  anyTwoPointsUniqueLineClosed : A.anyTwoPointsUniqueLine
  parallelPostulateClosed : A.parallelPostulate
  threeNonCollinearClosed : A.threeNonCollinear
  constantLineSizeClosed : A.constantLineSize

def FiniteAffinePlaneClosed (A : FiniteAffinePlanePackage) : Prop :=
  A.anyTwoPointsUniqueLine ∧ A.parallelPostulate ∧ A.threeNonCollinear ∧ A.constantLineSize

theorem finite_affine_plane_closed_from_evidence
    (A : FiniteAffinePlanePackage) (E : FiniteAffinePlaneEvidence A) :
    FiniteAffinePlaneClosed A := by
  exact And.intro E.anyTwoPointsUniqueLineClosed
    (And.intro E.parallelPostulateClosed
      (And.intro E.threeNonCollinearClosed E.constantLineSizeClosed))

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse