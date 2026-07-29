import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure BlockDesignPackage where
  pointSet : Type u
  blockCollection : Set (Set pointSet)
  constantBlockSize : ℕ
  pairReplicationCount : ℕ
  designParametersConsistent : Prop
  designParametersConsistentTerm : designParametersConsistent

structure BlockDesignEvidence (D : BlockDesignPackage) where
  constantBlockSizeClosed : D.constantBlockSize = 0
  pairReplicationCountClosed : D.pairReplicationCount > 0
  designParametersConsistentClosed : D.designParametersConsistent

def BlockDesignClosed (D : BlockDesignPackage) : Prop :=
  D.constantBlockSize = 0 ∧ D.pairReplicationCount > 0 ∧ D.designParametersConsistent

theorem block_design_closed_from_evidence (D : BlockDesignPackage) (E : BlockDesignEvidence D) :
    BlockDesignClosed D := by
  exact And.intro E.constantBlockSizeClosed (And.intro E.pairReplicationCountClosed E.designParametersConsistentClosed)

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse