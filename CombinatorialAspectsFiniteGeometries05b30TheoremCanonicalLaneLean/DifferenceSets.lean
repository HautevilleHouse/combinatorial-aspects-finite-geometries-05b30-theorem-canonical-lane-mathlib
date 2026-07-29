import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure DifferenceSetPackage where
  group : Type
  groupOp : Group group
  subset : Set group
  size : Nat
  lambda : Nat
  differenceProperty : Prop

structure DifferenceSetEvidence (D : DifferenceSetPackage) where
  differencePropertyClosed : D.differenceProperty

def DifferenceSetClosed (D : DifferenceSetPackage) : Prop :=
  D.differenceProperty

theorem difference_set_closed_from_evidence (D : DifferenceSetPackage) (E : DifferenceSetEvidence D) :
    DifferenceSetClosed D := by
  exact E.differencePropertyClosed

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse