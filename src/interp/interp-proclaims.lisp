
(IN-PACKAGE "USER") 
(PROCLAIM '(FTYPE (FUNCTION (*) (VALUES T T)) BOOT:|ReadLine|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T) FUNCTION) FOAM::FOAMPROGINFOSTRUCT-FUNCALL)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T) FIXNUM) BOOT::LINE-NUMBER BOOT::|eq0|
            VMLISP:CHAR2NUM BOOT::|nothingWidth| BOOT::|nothingSub|
            BOOT::|nothingSuper| BOOT::LINE-LAST-INDEX
            BOOT::LINE-CURRENT-INDEX FOAM:|ProgHashCode|
            FOAM:|strLength| BOOT:|StringLength| BOOT::|widthSC|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T) FOAM:|SInt|)
            FOAM::FOAMPROGINFOSTRUCT-HASHVAL)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T) (VALUES T T)) BOOT::|mkSharpVar|
            BOOT::|makeCharacter| BOOT::|mapCatchName|
            BOOT::|queryUser| BOOT:|LispKeyword| BOOT::MONITOR-INFO
            BOOT::FILE-GETTER-NAME BOOT::|mkDomainCatName|
            FOAM:AXIOMXL-FILE-INIT-NAME BOOT::|getKeyedMsg|
            BOOT::|mkCacheName| BOOT::|mkAuxiliaryName|)) 
(PROCLAIM
    '(FTYPE (FUNCTION ((VECTOR T) (VECTOR T)) T) VMLISP::VGREATERP
            VMLISP::LEXVGREATERP)) 
(PROCLAIM '(FTYPE (FUNCTION ((VECTOR T)) T) BOOT:TRIMLZ)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T) (*)) BOOT:|StringToInteger|
            BOOT:|StringToFloat|)) 
(PROCLAIM '(FTYPE (FUNCTION (T *) (VALUES T T)) VMLISP:|read-line|)) 
(PROCLAIM '(FTYPE (FUNCTION (STRING FIXNUM) T) BOOT::|subWord|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T) FIXNUM) VMLISP:QSQUOTIENT
            VMLISP:QSREMAINDER VMLISP:QENUM FOAM:|SetProgHashCode|
            BOOT:GETCHARN BOOT::|attributeCategoryParentCount|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T) (VALUES T T)) BOOT::|htMakeLabel|
            BOOT::|fetchKeyedMsg|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T) *) BOOT::|applpar1| BOOT::|apprpar1|
            BOOT::|appargs1| BOOT::|appagg1| BOOT::|matrixBorder|
            BOOT::|e02befDefaultSolve| BOOT::|e02agfDefaultSolve|
            BOOT::|e02dafDefaultSolve| BOOT::|htQueryPage|
            BOOT::|compileAndLink| BOOT::|f04jgfDefaultSolve|
            BOOT::|f02aefDefaultSolve| BOOT::|f02agfDefaultSolve|
            BOOT::|apphor| BOOT::|appvertline| BOOT::|applpar|
            BOOT::|e04jafDefaultSolve| BOOT::|f01brfDefaultSolve|
            BOOT::|e04ycfDefaultSolve|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T *) *) VMLISP:CONCAT
            BOOT::LOCALDATABASE BOOT::FE BOOT::|ncBug|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T) *) BOOT::|replacePercentByDollar,fn|
            BOOT::|getSlotFromDomain| BOOT::|ncGetFunction|
            BOOT::|c02affDefaultSolve| BOOT::|c02agfDefaultSolve|
            BOOT::|Qf2F| BOOT::|selectOptionLC| BOOT::|compUniquely|
            BOOT::|compExpression| BOOT::|e02gafDefaultSolve|
            BOOT::|e02aefDefaultSolve| BOOT::|e02bbfDefaultSolve|
            BOOT::|asytranForm| BOOT::|asytranFormSpecial|
            BOOT::|asytranApplySpecial|
            BOOT::|sockGetString| BOOT::|showIt| BOOT::|pmPreparse,fn|
            BOOT::|pmPreparse,gn| BOOT::|dbSearchAbbrev|
            BOOT::|mkUpDownPattern,recurse| BOOT::|htMkPath|
            BOOT::|getVal| BOOT::|htGlossPage| BOOT::|checkCondition|
            BOOT::|compTopLevel| BOOT::GETOP
            BOOT::|checkTransformFirsts| BOOT::|parseIf,ifTran|
            BOOT::|dbShowOpAllDomains| BOOT::|templateVal|
            BOOT::|dbChooseDomainOp| BOOT::|whoUsesOperation|
            BOOT::|c05pbfDefaultSolve| BOOT::|c05nbfDefaultSolve|
            BOOT::|c06frfDefaultSolve| BOOT::|c06ekfDefaultSolve|
            BOOT::|NRTvectorCopy| BOOT::|c06fufDefaultSolve|
            BOOT::|c06fpfDefaultSolve| BOOT::|c06fqfDefaultSolve|
            BOOT::|applyInPackage| BOOT::|exp2FortSpecial|
            BOOT::|f04mcfDefaultSolve| BOOT::|f04atfDefaultSolve|
            BOOT::|f04fafDefaultSolve| BOOT::|f02affDefaultSolve|
            BOOT::|dbShowCons1| BOOT::|f02aafDefaultSolve|
            BOOT::|dbSelectCon| BOOT::|dbShowOperationsFromConform|
            BOOT::|genSearch1| BOOT::|dbSearch|
            BOOT::|constructorSearch| BOOT::|underscoreDollars,fn|
            BOOT::|oSearchGrep| BOOT::|selectOption|
            BOOT::|constructorSearchGrep| BOOT::|dbInfoChoose1|
            BOOT::|bcDrawIt2| BOOT::|charybdis| BOOT::|bcMkFunction|
            BOOT::|charyTop| BOOT::|bcDrawIt|
            BOOT::|f01qcfDefaultSolve| BOOT::|e02zafDefaultSolve|
            BOOT::|ncloopInclude0| VMLISP:$FCOPY)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T) *) BOOT::|e02befColdSolve|
            BOOT::|e02ahfDefaultSolve| BOOT::|e02akfDefaultSolve|
            BOOT::|d02bbfDefaultSolve| BOOT::|d02cjfDefaultSolve|
            BOOT::|e01sefDefaultSolve| BOOT::|htSetLiterals|
            BOOT::|f04mbfDefaultSolve| BOOT::|f02axfDefaultSolve|
            BOOT::|f02akfDefaultSolve| BOOT::|kcaPage1|
            BOOT::MAKE-DEPSYS BOOT::|makeLongStatStringByProperty|
            BOOT::|f01rdfDefaultSolve| BOOT::|f01qdfDefaultSolve|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T) *) BOOT::|compileConstructorLib|
            BOOT::|quoteApp| BOOT::|argsapp| BOOT::|appargs|
            BOOT::|inApp| BOOT::|appsc| BOOT::|appfrac| BOOT::|exptApp|
            BOOT::|charyTrouble| BOOT::|overbarApp|
            BOOT::|appHorizLine| BOOT::|overlabelApp| BOOT::/D-1
            BOOT::|appmat| BOOT::|e01bhfDefaultSolve|
            BOOT::|e02adfDefaultSolve| BOOT::|e02bcfDefaultSolve|
            BOOT::|makeStream| BOOT::|newExpandLocalTypeArgs|
            FOAM:|fputss| FOAM:|fgetss| BOOT::|f01mafDefaultSolve|
            BOOT::|conform2StringList| BOOT::|f02abfDefaultSolve|
            BOOT::|f02awfDefaultSolve| BOOT::|f02ajfDefaultSolve|
            BOOT::|f02adfDefaultSolve| BOOT::|patternCheck,mknew|
            BOOT::|kDomainName| BOOT::|koPageAux| BOOT::|dbShowOp1|
            BOOT::APP BOOT::|appagg| BOOT::|binomialApp|
            BOOT::|charyTrouble1| BOOT::|appsub| BOOT::|slashApp|
            BOOT::|appsetq| BOOT::|makeStatString|
            BOOT::|e02dffDefaultSolve| BOOT::|e04dgfDefaultSolve|
            BOOT::|e04fdfDefaultSolve| BOOT::|e04gcfDefaultSolve|
            BOOT::|f01refDefaultSolve| BOOT::|f01qefDefaultSolve|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T T T T) *) BOOT::|makeFortranFun|
            BOOT::|d03eefDefaultSolve| BOOT::|e04nafDefaultSolve|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T) *) BOOT::|e02ajfDefaultSolve|
            BOOT::|e02dcfDefaultSolve| BOOT::|e02ddfDefaultSolve|
            BOOT::|d02ejfDefaultSolve| BOOT::|d02bhfDefaultSolve|
            BOOT::|d01fcfDefaultSolve| BOOT::|d01gbfDefaultSolve|
            BOOT::|f04qafDefaultSolve| BOOT::|f02bjfDefaultSolve|
            BOOT::|f02bbfDefaultSolve| BOOT::|e04mbfDefaultSolve|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T T T T T T T T) *)
            BOOT::BUILD-INTERPSYS)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T T) *) BOOT::|e02ddfColdSolve|
            BOOT::|f02xefDefaultSolve| BOOT::|f02wefDefaultSolve|
            BOOT::BUILD-DEPSYS)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T T T) *) BOOT::|e04ucfDefaultSolve|
            BOOT::|e02dcfColdSolve| BOOT::|d02kefDefaultSolve|
            BOOT::|d02gbfDefaultSolve| BOOT::|d02gafDefaultSolve|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T T T T T T T) *)
            BOOT::|d02rafDefaultSolve|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T) T) BOOT::|mapRecurDepth| BOOT::THETACHECK
            BOOT::|flowSegmentedMsg| BOOT::|rewriteMap0|
            BOOT::|restoreDependentMapInfo| BOOT::|dcSig|
            BOOT::|analyzeNonRecur| BOOT::|addMap| BOOT::|fortCall|
            BOOT::|axAddLiteral| BOOT::|writeStringLengths|
            BOOT::|writeXDR| BOOT::|deleteMap| BOOT::|fnameNew|
            BOOT::|axFormatDefaultOpSig| BOOT::|htpSetProperty|
            BOOT::|rewriteMap1| BOOT::|displayMap|
            BOOT::|compileDeclaredMap| BOOT::|compileCoerceMap|
            BOOT::|displaySingleRule| BOOT::|hasAtt| BOOT::|hasAttSig|
            BOOT::SPADRWRITE0 BOOT::SPADRWRITE BOOT::|recordNewValue|
            BOOT::|recordOldValue| BOOT::|orderUnionEntries,split|
            BOOT::|getSlotNumberFromOperationAlist|
            BOOT::|isSuperDomain| BOOT::|recordOldValue0|
            BOOT::|PARSE-getSemanticForm| BOOT::|recordNewValue0|
            BOOT::|getSlotFromFunctor| BOOT::|addConstructorModemaps|
            BOOT::|compDefWhereClause| BOOT::|get1| BOOT::|get2|
            BOOT::|get0| BOOT::|throwListOfKeyedMsgs|
            BOOT::|getConstructorOpsAndAtts|
            BOOT::|mkExplicitCategoryFunction|
            BOOT::|findDomainSlotNumber| BOOT::|addIntSymTabBinding|
            BOOT::|sigsMatch| BOOT::|compDefineAddSignature|
            BOOT::|hasFullSignature| BOOT:ELEMN BOOT::|mkAtree2|
            BOOT::|mkAtree3| BOOT::|getValueFromSpecificEnvironment|
            BOOT::|compForMode| BOOT::|transferPropsToNode,transfer|
            BOOT::|genDomainOps| BOOT::|getOperationAlist|
            BOOT::|remprop| BOOT::|setMsgForcedAttr| BOOT::|P2Uts|
            BOOT::|Up2FR| BOOT::|mac0Define| BOOT::|getMappingArgValue|
            BOOT::|compContained| BOOT::|getArgValueComp|
            BOOT::|altTypeOf| BOOT::|mac0InfiniteExpansion|
            BOOT::|setMsgUnforcedAttr| BOOT::|genDomainViewList|
            BOOT::|compSubDomain| BOOT::|compCapsule|
            BOOT::|sideEffectedArg?| BOOT::|evalFormMkValue|
            BOOT::|doItIf| BOOT::|compSingleCapsuleItem|
            BOOT::|compJoin| BOOT::|rewriteMap|
            BOOT::|NRTgetLookupFunction| BOOT::|lisplibWrite|
            BOOT::|getLocalMms| BOOT::|makeFunctorArgumentParameters|
            BOOT::|selectMmsGen,exact?| BOOT::REDUCE-1
            BOOT::|getLocalMms,f| BOOT::|isOpInDomain|
            BOOT::|compDefine| BOOT::|compCategory|
            BOOT::|getTargetFromRhs| BOOT::|unifyStructVar|
            BOOT::|augmentSub| BOOT::|unifyStruct| BOOT::|compAdd|
            BOOT::|filterModemapsFromPackages| BOOT::|constrArg|
            BOOT::|evalMmCond0| BOOT::|maprinSpecial| BOOT::|hasCaty|
            BOOT::|evalMmCond| BOOT:ADDASSOC BOOT::|hasCate|
            BOOT::|matchTypes| BOOT::|findUniqueOpInDomain|
            BOOT::|hasSigOr| BOOT::|hasSigAnd|
            BOOT::|findCommonSigInDomain| BOOT::|evalMmCat1|
            BOOT::|coerceTypeArgs| BOOT::|domArg2| BOOT::|L2Tuple|
            BOOT::V2M BOOT::DEF-INNER BOOT::|OV2Sy| BOOT::|Qf2EF|
            BOOT::|Sy2P| BOOT::I2NNI BOOT::|Rm2L| BOOT::|Var2OtherPS|
            BOOT::|Var2UpS| BOOT::OV2SE BOOT::|NDmp2domain| VMLISP:PUT
            BOOT::|Var2Up| BOOT::|Expr2Mp| BOOT::|Expr2Dmp|
            BOOT::|Sy2NDmp| VMLISP:DEFIOSTREAM BOOT::|Dmp2P|
            BOOT::|Sy2Mp| BOOT::|Var2SUP| BOOT::|Factored2Factored|
            VMLISP:EQSUBSTLIST BOOT::I2PI BOOT::|P2Expr| BOOT::|P2Up|
            BOOT::|P2Dmp| BOOT::|Var2FS| BOOT::|Sy2Dmp| BOOT::B-MDEF
            BOOT::|Ker2Expr| BOOT::|Sy2OV| BOOT::|Var2QF| BOOT::|Sm2V|
            BOOT::M2V BOOT::|Var2P| BOOT::I2OI BOOT::P2FR
            BOOT::|makeEijSquareMatrix| BOOT::|Set2L| BOOT::|Sm2Rm|
            BOOT::DEF BOOT::|Var2NDmp| BOOT::|Dmp2Dmp|
            BOOT::|coerceDmp2| BOOT::|rread| BOOT::I2EI BOOT::|Var2Mp|
            BOOT::|compCapsuleInner| BOOT::|Mp2FR| BOOT::|Qf2domain|
            BOOT::|compCapsuleItems| BOOT::|L2Set| BOOT::|Var2Gdmp|
            BOOT::COMP-ILAM BOOT::COMP-SPADSLAM BOOT::|L2Sm|
            BOOT::|mkCategoryPackage| BOOT::COMP-SLAM BOOT::L2M
            BOOT::|compDefine1| BOOT::|Mp2Expr| BOOT::|Ker2Ker|
            BOOT::|Var2Dmp| VMLISP:MSUBST BOOT::|Dmp2NDmp|
            BOOT::|Sm2PolyType| BOOT::|Var2OV|
            BOOT::|orderPredicateItems| BOOT::|L2Rm| BOOT::|substVars|
            BOOT::|OV2poly| BOOT::|Sm2M|
            BOOT::|augmentLisplibModemapsFromFunctor| BOOT::OV2P
            BOOT::|needBlankForRoot| BOOT::|Rn2F|
            BOOT::|getInCoreModemaps| BOOT::|Sm2L| BOOT::|splitConcat|
            BOOT::|Un2E| BOOT::|SUP2Up| BOOT::OV2OV
            BOOT::|insertAlist,fn| BOOT::|replaceVars|
            BOOT::|compFromIf| BOOT::|Scr2Scr| BOOT::|compBoolean|
            BOOT::|L2Record| BOOT::|Rm2V| VMLISP:RPLNODE
            BOOT::|domain2NDmp| BOOT::|Up2Up|
            BOOT::|augLisplibModemapsFromCategory| BOOT::|P2Mp|
            BOOT::|compWithMappingMode,FreeList| BOOT::|orderPredTran|
            BOOT::|Rm2Sm| BOOT::|Rm2M| BOOT::|Up2SUP| BOOT::|Mp2Up|
            BOOT::|Mp2Dmp| BOOT::|LargeMatrixp| BOOT::DP2DP
            BOOT::|Dmp2Up| BOOT::|Up2P| BOOT::|Complex2Expr|
            BOOT::|seteltModemapFilter| BOOT::/MONITORX BOOT::|P2Upxs|
            BOOT::|coerceTraceFunValue2E| BOOT::|Complex2FR|
            BOOT::|Up2Mp| BOOT::V2L BOOT::|P2Uls| BOOT::|M2Sm|
            BOOT::|coerceTraceArgs2E| BOOT::|Complex2underDomain|
            BOOT::|resolveTTRed2| BOOT::|Agg2L2Agg|
            BOOT::|resolveTTRed1| BOOT::|fnameMake|
            BOOT::MONITOR-PRINARGS VMLISP:HREMPROP
            BOOT::|eltModemapFilter| BOOT::|coerceOrCroak|
            BOOT::|resolveTTEq2| BOOT::|resolveTTEq1|
            BOOT::|matchUpToPatternVars|
            BOOT::|getConditionalCategoryOfType|
            BOOT::|getSubDomainPredicate| BOOT::|resolveTMEq2|
            BOOT::|coerceIntX| BOOT::|compSymbol|
            BOOT::|coerceSubDomain| BOOT::|compExpressionList|
            BOOT::|NRTcompileEvalForm| BOOT::|setqMultiple,decompose|
            BOOT::|permuteToOrder| BOOT::|retractUnderDomain|
            BOOT::|compList| BOOT::SMALL-ENOUGH-COUNT
            BOOT::|isRectangularList| BOOT::|augModemapsFromDomain1|
            BOOT::|canCoerceByFunction1|
            BOOT::|sayFunctionSelectionResult| BOOT::|compForm|
            BOOT::|compTypeOf| BOOT::|comp3| BOOT::|coerceOrFail|
            BOOT::|computeTTTranspositions,compress| BOOT::|algEqual|
            BOOT::|compiledLookupCheck| VMLISP:RWRITE
            BOOT::|coerceOrThrowFailure| BOOT::|NRTcompiledLookup|
            BOOT::|spad2BootCoerce| BOOT::|M2Rm| BOOT::M2M
            VMLISP:MACRO-INVALIDARGS BOOT::L2V BOOT::|Mp2P|
            BOOT::|Mp2Mp| BOOT::|coerceDmpCoeffs| BOOT::|Expr2Complex|
            BOOT::|Dmp2Expr| BOOT::|coerceFFE| BOOT::M2L VMLISP:QESET
            BOOT::|V2Sm| BOOT::|isRectangularVector| BOOT::V2DP
            BOOT::L2DP BOOT::|Up2Expr| BOOT::|Qf2Qf| BOOT::|NDmp2NDmp|
            BOOT::|V2Rm| BOOT::|Qf2PF| BOOT::|Dmp2Mp| BOOT::|Up2Dmp|
            BOOT::|Sy2Var| BOOT::|Agg2Agg| BOOT::|Expr2Up|
            BOOT::|Sy2Up| VMLISP:HPUT BOOT::|pvarCondList1|
            VMLISP:SUBSTRING BOOT::|interpRewriteRule| BOOT::|putAtree|
            BOOT::|isEltable| BOOT::|selectMms| BOOT::|throwKeyedMsgSP|
            BOOT::|pushDownTargetInfo|
            BOOT::|pushDownOnArithmeticVariables|
            BOOT::|keyedMsgCompFailureSP| BOOT::|intCodeGenCoerce1|
            BOOT::|throwKeyedMsgCannotCoerceWithValue|
            BOOT::|asytranForm1| BOOT::|hput| BOOT::|asyCattranOp1|
            BOOT::|asyMakeOperationAlist| BOOT::|setVector4|
            BOOT::|SetDomainSlots124| BOOT::|asGetExports|
            BOOT::|asySig1| BOOT::|ncPutQ|
            BOOT::|putConstructorProperty| BOOT::|throwKeyedErrorMsg|
            BOOT::|mkUserConstructorAbbreviation|
            BOOT::|unabbrevSpecialForms| BOOT::|nAssocQ|
            BOOT::|New,ENTRY,2| BOOT::READ-INPUT BOOT::READ-SPAD
            BOOT::|errorSupervisor1| BOOT::|argumentDataError|
            BOOT::|BesselasymptA| BOOT::|htpSetLabelSpadValue|
            BOOT::|optPackageCall| BOOT::|from?| BOOT::|clngamma|
            BOOT::|chebevalarr| BOOT::|PsiBack| BOOT::|logH|
            BOOT::|PiMinusLogSinPi| BOOT::|besselIcheb|
            BOOT::|chebstarevalarr| BOOT::|chebf01coefmake|
            BOOT::|clngammacase23| BOOT::|PsiAsymptoticOrder|
            BOOT::|grepf| BOOT::|clngammacase1| BOOT::|cotdiffeval|
            BOOT::|BesselIAsympt| BOOT::|lffloat|
            BOOT::|substringMatch| BOOT::|makeResultRecord|
            BOOT::|makeCompilation| BOOT::|extractFileNameFromPath,fn|
            BOOT::|makeAspGenerators| BOOT::|makeAspGenerators1|
            BOOT::|mkNewUnionFunList| BOOT::|EnumEqual|
            BOOT::|cleanUpAfterNagman| BOOT::|sySpecificErrorAtToken|
            BOOT::|prepareResults,defaultValue|
            BOOT::|setVector4Onecat| BOOT::|pfLambda| BOOT::|pfWIf|
            BOOT::|SigSlotsMatch| BOOT::|DomainPrint1|
            BOOT::|DescendCodeAdd1,update| BOOT::|CheckVector|
            BOOT::|pfTLambda| BOOT::|htSystemVariables,fn|
            BOOT::|postCollect,finish| VMLISP:|nsubst|
            BOOT::|npBackTrack| BOOT::|bchtMakeButton|
            BOOT::|compWhere| BOOT::|compVector| BOOT::|compAtom|
            BOOT::|getUniqueModemap| BOOT::|modeIsAggregateOf|
            BOOT::|compArgumentsAndTryAgain| VMLISP:MACRO-MISSINGARGS
            BOOT::|compForm1| BOOT::|mergeModemap|
            BOOT::|compSubsetCategory| BOOT::|compString|
            BOOT::|augModemapsFromDomain| BOOT::|compWithMappingMode|
            BOOT::|extractCodeAndConstructTriple| BOOT::|compCat|
            BOOT::|pfWith| BOOT::|compMakeDeclaration|
            BOOT::|extendsCategoryForm| BOOT::|compSeq|
            BOOT::|compSeq1| BOOT::|compReturn| BOOT::|isSubset|
            BOOT::|getModemapList| BOOT::|compCase1|
            BOOT::|compCoerce1| BOOT::|compPretend| BOOT::|compMacro|
            BOOT::|compConstructorCategory| BOOT::|compCoerce|
            BOOT::|compColon| BOOT::|compSetq| BOOT::|compLeave|
            BOOT::|npList| BOOT::|modeEqualSubst| BOOT::|compIf|
            BOOT::|compIs| BOOT::|comp2| BOOT::|compImport|
            BOOT::|coerce,fn| BOOT::|throwKeyedMsgFromDb|
            BOOT::|sayKeyedMsgFromDb| BOOT::|compHas| BOOT::|compExit|
            BOOT::|compElt| BOOT::|compConstruct| BOOT::|compCons|
            BOOT::|compCons1| BOOT::|compSeqItem|
            BOOT::|recordInstantiation1| BOOT::|compCase|
            BOOT::|compQuote| BOOT::|recordInstantiation|
            BOOT::|compAtSign| BOOT::|compSuchthat|
            BOOT::|addToConstructorCache| BOOT::|loadLibNoUpdate|
            BOOT::SETDATABASE BOOT::|lassocShiftWithFunction|
            BOOT::|assocCache| BOOT::|assocCacheShift|
            BOOT::|assocCacheShiftCount| BOOT::|pileForests|
            BOOT::|isLegitimateMode;| BOOT::|hasFileProperty;|
            BOOT::|coerceConvertMmSelection;|
            BOOT::|hasFilePropertyNoCache| BOOT::|writeLib1|
            BOOT::|rwrite|
            BOOT::|getOplistWithUniqueSignatures|
            BOOT::|checkSkipOpToken| BOOT::|checkSkipIdentifierToken|
            BOOT::|readLib1| BOOT::|checkSkipBlanks|
            BOOT::MAKE-PARSE-FUNC-FLATTEN-1 BOOT::|checkSkipToken|
            BOOT::|getDocForCategory| BOOT::|newWordFrom|
            BOOT::PRINT-XDR-STREAM BOOT::|getDocForDomain|
            BOOT::|getDoc| BOOT::|htcharPosition|
            BOOT::|PackageDescendCode| BOOT::|RecordEqual|
            BOOT::|processPackage,replace| BOOT::|UnionEqual|
            BOOT::|mkEnumerationFunList| BOOT::|mkMappingFunList|
            BOOT::|mkUnionFunList| BOOT::|mkRecordFunList|
            BOOT::|MappingEqual| BOOT::|CondAncestorP|
            BOOT::|updateDatabase| BOOT::|compressSexpr|
            BOOT::|parseTypeError| BOOT::|moreGeneralCategoryPredicate|
            BOOT::|encodeUnion| BOOT::|makeCatPred|
            BOOT::|lookupInDomainByName| BOOT::|simpHasAttribute|
            BOOT::|domainHput| BOOT::|simpHasPred,simpHas|
            BOOT::|substDollarArgs| BOOT::|NRTisRecurrenceRelation|
            BOOT::|dbShowOpSigList| BOOT::|dbSelectData|
            BOOT::|dbReduceOpAlist| BOOT::|listOfCategoryEntriesIf|
            BOOT::|dbResetOpAlistCondition|
            BOOT::|algCoerceInteractive| BOOT::|buildPredVector,fn|
            BOOT::|extendsCategoryBasic| BOOT::|catExtendsCat?|
            BOOT::|expandType| BOOT::|expandTypeArgs| 
            BOOT::|dbPresentOpsSaturn| BOOT::|reduceOpAlistForDomain|
            BOOT::|mungeAddGensyms,fn| BOOT::|dbReduceBySelection|
            BOOT::|extendsCategoryBasic0| BOOT::|substSlotNumbers|
            BOOT::|dbReduceBySignature| BOOT::|extendsCategory|
            BOOT::|buildPredVector| BOOT::|dbParts|
            BOOT::|NRTextendsCategory1| BOOT::|getSubstQualify|
            BOOT::|fortFormatLabelledIfGoto| BOOT::|whoUsesMatch1?|
            BOOT::|fullSubstitute| BOOT::|whoUsesMatch?|
            BOOT::|getfortarrayexp| BOOT::|addWhereList|
            BOOT::|dbGetDisplayFormForOp|
            BOOT::|dbGetFormFromDocumentation| BOOT::|anySubstring?|
            VMLISP::MAKE-ENTRY BOOT::|NRTsetVector4a|
            BOOT::|NRTsetVector4Part1| BOOT::|NRTencode,encode|
            BOOT::|consOpSig| BOOT::|genSlotSig| BOOT::|NRTsetVector4|
            BOOT::|newExpandGoGetTypeSlot| BOOT::MAKEOP
            BOOT::|insertEntry| BOOT::|nextown| BOOT::|mkFortFn|
            BOOT::|exp2Fort2| BOOT::|evalQUOTE| BOOT::|evalSEQ|
            BOOT::|IFcodeTran| BOOT::|exp2FortFn|
            BOOT::|fortFormatHead| BOOT::|addContour,fn1|
            BOOT::|traverse,traverseInner| BOOT::|upTableSetelt|
            BOOT::|printSignature| BOOT::|addContour,fn3|
            BOOT::|commandAmbiguityError| BOOT::|charPosition|
            BOOT::|traverse| BOOT::|dbPart| BOOT::|commandErrorMessage|
            BOOT::|substituteOp| BOOT::|displayModemap|
            BOOT::|displayType| BOOT::|comp| BOOT::|displayMode|
            BOOT::|numOfOccurencesOf,fn| VMLISP::QUOREM
            BOOT::|pmatchWithSl| BOOT::|displayCondition|
            BOOT::|displayValue|
            BOOT::|intersectionContour,buildModeAssoc| BOOT::|get|
            BOOT::|sigDomainVal| BOOT::GEQNSUBSTLIST
            BOOT::|compNoStacking| BOOT::|transImplementation|
            BOOT::GEQSUBSTLIST BOOT::|libConstructorSig,g|
            BOOT::|coerceable| BOOT::|substituteIntoFunctorModemap|
            BOOT::|adjExitLevel| BOOT::|getParentsFor|
            BOOT::|asytranApply| BOOT::|explodeIfs,fn| BOOT::|dbSplit|
            BOOT::|buildLibAttr| BOOT::|buildLibOp|
            BOOT::|transKCatAlist| BOOT::|dbTickIndex|
            BOOT::|insertShortAlist| BOOT::|sublisFormal,sublisFormal1|
            BOOT::PUTALIST FOAM:|FormatNumber|
            BOOT::|dbSetOpAlistCondition| BOOT::|compiledLookup|
            BOOT::|insertAlist| BOOT::|reduceAlistForDomain|
            BOOT:|StreamCopyChars| BOOT:|StreamCopyBytes|
            BOOT::|dbXParts| BOOT::|kePageDisplay|
            BOOT::|dbShowOpItems| BOOT::MKPFFLATTEN-1
            BOOT::|dbSearchOrder| BOOT::CARCDRX1 BOOT::SETELTREST
            BOOT::SETELTFIRST BOOT::AS-INSERT1 BOOT::AS-INSERT
            BOOT::PROPERTY BOOT::|mkDomTypeForm| BOOT::|stringPosition|
            BOOT:|StringFromTo| BOOT::|patternCheck,equal|
            BOOT:|StringFromLong| BOOT::|rightCharPosition|
            BOOT::|infix?| BOOT::|matchSegment?| BOOT::|stringMatch|
            BOOT::|skipBlanks| BOOT::|dbPresentConsSaturn|
            BOOT::MAKE-DEFUN BOOT::|compOrCroak| BOOT::|profileRecord|
            BOOT::|getSignature| BOOT::|traceDomainLocalOps|
            BOOT::|getArgumentModeOrMoan|
            BOOT::|filterListOfStringsWithFn|
            BOOT::|mkGrepPattern1,charPosition|
            BOOT::|displayModemap,g|
            BOOT::|filterAndFormatConstructors| BOOT::READ-BOOT
            BOOT::|userLevelErrorMessage| BOOT::|addBinding|
            BOOT::|dbShowConsDoc1| BOOT::|makePathname|
            BOOT::|mkConform| BOOT::|dbInfoFindCat| BOOT::|compReduce|
            BOOT::|dbShowInfoList| BOOT::|dbShowConditions|
            BOOT::|compRepeatOrCollect| BOOT::|dbInfoOrigin|
            BOOT::|dbConstructorDoc| BOOT::|interpret2|
            BOOT::|htpSetLabelInputString| BOOT::|letPrint2|
            BOOT::|letPrint| BOOT::|mapLetPrint|
            BOOT::|htpAddInputAreaProp| BOOT::|getOpBindingPower|
            BOOT::|infixArgNeedsParens| BOOT::|linearFinalRequest|
            BOOT::|bcInputEquations,f| BOOT::|htpSetLabelErrorMsg|
            BOOT::|isBreakSegment?| BOOT::|substring?|
            BOOT::|sublisMatAlist| BOOT::MAKESPAD
            BOOT::|reportCategory| BOOT::|longext|
            BOOT::|npParenthesize| BOOT::|bcString2WordList,fn|
            VMLISP::ECQGENEXP VMLISP::RCQGENEXP BOOT::|outputString|
            BOOT::|outputNumber| VMLISP::DODSETQ
            BOOT::|pfInfApplication| BOOT::|insertString|
            BOOT::|npAndOr| BOOT::|npListofFun| BOOT::|optSpecialCall|
            BOOT::|pfPushBody| BOOT::|pfIf| BOOT::|incZip|
            BOOT::|augProplist| BOOT::|augProplistInteractive|
            BOOT::|centerString| BOOT::|evalCOLLECT|
            BOOT::|interpCOLLECTbody| BOOT::|upLoopIterIN|
            BOOT::|position,posn| BOOT::|domainVal| BOOT::|subVecNodes|
            BOOT::|addBindingInteractive| BOOT::|interpCOLLECT|
            BOOT::|upTaggedUnionConstruct| BOOT::|upRecordConstruct|
            BOOT::|newExpandTypeSlot| BOOT::|upNullList|
            BOOT::|upStreamIterIN| BOOT::|getCatForm|
            BOOT::|oldAxiomAddChild| BOOT::|evalCOERCE|
            BOOT::|mkAndApplyZippedPredicates| BOOT::|lookupPred|
            BOOT::|oldAxiomDomainHasCategory| BOOT::|mkIterFun|
            BOOT::|attributeCategoryBuild|
            BOOT::|oldAxiomCategoryBuild| BOOT::|upLETtype|
            BOOT::|upLETWithFormOnLhs| BOOT::|lazyMatchAssocV1|
            BOOT::|oldAxiomCategoryNthParent| BOOT::|assignSymbol|
            BOOT::|evalIsntPredicate| BOOT::|evalIsPredicate|
            BOOT::|SpadInterpretStream| BOOT::|upSetelt| BOOT:SUBLISLIS
            BOOT::|upNullTuple| BOOT::|evalIF| BOOT::|intloopProcess|
            BOOT::|evalis| BOOT::|evalREPEAT| BOOT::|upwhereMain|
            BOOT::|upwhereMkAtree| BOOT::|upwhereClause|
            BOOT::|intloopInclude0| BOOT::|intloopSpadProcess,interp|
            BOOT::|incPrefix?| BOOT::|inclmsgIfSyntax|
            BOOT::|renamePatternVariables1| BOOT::|newExpandLocalType|
            BOOT::|newExpandLocalTypeForm|
            BOOT::|oldAxiomPreCategoryBuild|
            BOOT::|getFunctionFromDomain| BOOT::|lazyOldAxiomAddChild|
            BOOT:SUBSTEQ BOOT::|getOpCode| BOOT::|lazyDomainSet|
            BOOT::|application2String| BOOT::|putI| BOOT::|mkInterpFun|
            BOOT::|interpret1| BOOT::|analyzeMap0|
            BOOT::|reportOpSymbol,sayMms| BOOT::|findLocalsInLoop|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T) T) BOOT::|analyzeRecursiveMap|
            BOOT::|augmentMap| BOOT::|reportFunctionCompilation|
            BOOT::|putSrcPos| BOOT::|hasSigInTargetCategory,fn|
            BOOT::|encodeFunctionName| BOOT::|getArgValueComp2|
            BOOT::|augModemapsFromCategory| BOOT::|compDefineFunctor1|
            BOOT::|augModemapsFromCategoryRep|
            BOOT::|compDefineFunctor| BOOT::|processFunctor|
            BOOT::|buildFunctor| BOOT::|selectMmsGen,matchMms|
            BOOT::|makeConstrArg|
            BOOT::|commuteSparseUnivariatePolynomial|
            BOOT::|commuteUnivariatePolynomial|
            BOOT::|commuteSquareMatrix| BOOT::|coerceDmp1|
            BOOT::|aggregateApp| BOOT::|compDefineCategory1|
            BOOT::|commuteFraction| BOOT::|compDefineCategory|
            BOOT::|commuteQuaternion| BOOT::|commuteComplex|
            BOOT::|resolveTT2| BOOT::|concatApp1|
            BOOT::|compFormPartiallyBottomUp|
            BOOT::|canReturn,findThrow| BOOT::|orderMms|
            BOOT::|sayFunctionSelection| BOOT::MATCH-FUNCTION-DEF
            BOOT::|commuteNewDistributedMultivariatePolynomial|
            BOOT::|commuteMPolyCat|
            BOOT::|commuteDistributedMultivariatePolynomial|
            BOOT::|commuteMultivariatePolynomial|
            BOOT::|commutePolynomial| BOOT::|bottomUpDefaultCompile|
            BOOT::|bottomUpDefaultEval| BOOT::|bottomUpFormTuple|
            BOOT::|bottomUpFormAnyUnionRetract| BOOT::|bottomUpForm|
            BOOT::|bottomUpFormUntaggedUnionRetract|
            BOOT::|bottomUpFormRetract| BOOT::|bottomUpForm2|
            BOOT::|bottomUpForm0| BOOT::|bottomUpForm3|
            BOOT::|coerceByTable| BOOT::|compileRecurrenceRelation|
            BOOT::|logS| BOOT::|spadify| BOOT::|prepareResults|
            BOOT::|DescendCodeAdd1|
            BOOT::|htSystemVariables,displayOptions| BOOT::|evalAndSub|
            BOOT::FINCOMBLOCK BOOT::|compIf,Env| BOOT::LOCALASY
            BOOT::|mkCacheVec| BOOT::LOCALNRLIB BOOT::|selectMms1;|
            BOOT::|selectMms2| BOOT::|processPackage|
            BOOT::|mkCategory| BOOT::|newCompareSig|
            BOOT::|lookupInDomain| BOOT::|fortFormatDo|
            BOOT::|newLookupInDomain| BOOT::|getNewDefaultPackage|
            BOOT::|printLabelledList| BOOT::|compApplication|
            BOOT::|dbExpandOpAlistIfNecessary| BOOT::-REDUCE
            BOOT::|compDefineCapsuleFunction| BOOT::|genSearchSay|
            BOOT::|compRepeatOrCollect,fn| BOOT::|dbGetDocTable|
            BOOT::|apprpar| BOOT::WRITE-TAG-LINE BOOT::|concatTrouble|
            BOOT::|charyBinary| BOOT::|split2| BOOT::|needStar|
            BOOT::|lazyMatchArg2| BOOT::|newLookupInTable|
            BOOT::|hashNewLookupInTable| BOOT::|compileADEFBody|
            BOOT::|interpLoopIter| BOOT::|compileIF|
            BOOT::|xlCannotRead| BOOT::|xlMsg| BOOT::|xlNoSuchFile|
            BOOT::|incLine| BOOT::|xlFileCycle| BOOT::|xlConStill|
            BOOT::|xlConActive| BOOT::|xlSay| BOOT::|xlOK1|
            BOOT::|incLude| BOOT::|analyzeDeclaredMap|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T) T) BOOT::|analyzeNonRecursiveMap|
            BOOT::|makeInternalMapName| BOOT::|printCName|
            BOOT::|clearDep1| BOOT::|domArg| BOOT::|mkDomPvar|
            BOOT::|hasSig| BOOT::|putIntSymTab|
            BOOT::|findConstructorSlotNumber| BOOT::MAKE-FLOAT
            BOOT::|getFileProperty|
            BOOT::|compDefWhereClause,fetchType| BOOT::|compSubDomain1|
            BOOT::|putFileProperty| BOOT::|srcPosNew|
            BOOT::|substNames| BOOT::|mac0MLambdaApply|
            BOOT::|mac0ExpandBody| BOOT::|genDomainView|
            BOOT::|getArgValue2| BOOT::|compFunctorBody|
            BOOT::|analyzeMap| BOOT::|defaultTarget|
            BOOT::|selectDollarMms| BOOT::|selectMmsGen|
            BOOT::|allOrMatchingMms| BOOT::|evalMmCat|
            BOOT::|matchMmSig| BOOT::/LOCATE BOOT::|hasCateSpecialNew|
            BOOT::|evalMm| BOOT::|evalMmFreeFunction|
            BOOT::|hasCateSpecial| BOOT::|hasCate1| BOOT::|boxApp|
            BOOT::|concatApp| BOOT::|appsum| BOOT::|altSuperSubApp|
            BOOT::|concatbApp| BOOT::|appSum| BOOT::|binomApp|
            BOOT::|aggApp| BOOT::|fixUpPredicate| BOOT::|stepApp|
            BOOT::|appneg| BOOT::|setqMultipleExplicit|
            BOOT::|braceApp| BOOT::|compSetq1| BOOT::|timesApp|
            BOOT::|rootApp| BOOT::|bracketApp| BOOT::|plusApp|
            BOOT::|appparu1| BOOT::|bigopWidth| BOOT::|P2Us|
            BOOT::|pi2App| BOOT::|boxLApp| VMLISP:STRPOSL
            BOOT::|compOrCroak1| BOOT::|piApp| BOOT::|compForm2|
            BOOT::|compForm3| BOOT::|getConditionalCategoryOfType1|
            BOOT::|indefIntegralApp| BOOT::|nothingApp|
            BOOT::|evalconstruct| BOOT::|evalInfiniteTupleConstruct|
            BOOT::|setqSetelt| BOOT::|evalTupleConstruct|
            BOOT::|consProplistOf| BOOT::|setqMultiple|
            BOOT::|coerceImmediateSubDomain| BOOT::|intApp|
            BOOT::|setqSingle| BOOT::|assignError| BOOT::|sigma2App|
            BOOT::|canReturn| BOOT::|appext| BOOT::|centerApp|
            BOOT::|sigmaApp| BOOT::|stringApp| BOOT::|MpP2P|
            BOOT::|evalForm| BOOT::|selectLocalMms|
            BOOT::|bottomUpDefault| BOOT::|canCoerceTopMatching|
            BOOT::|catchCoerceFailure| BOOT::|asGetModemaps|
            BOOT::|asytranCategory| BOOT::|asytranCategoryItem|
            BOOT::|asytranDeclaration|
            BOOT::|InvestigateConditions,flist| BOOT::|getTranslation|
            BOOT::|condUnabbrev|
            BOOT::|constructorAbbreviationErrorCheck| BOOT::READ-SPAD0
            BOOT::|BesselasymptB| BOOT::|optCallSpecially|
            BOOT::|getDocDomainForOpSig| BOOT::|reportFunctionCacheAll|
            BOOT::|clngammacase2| BOOT::|constoken| BOOT::|writeMalloc|
            BOOT::|printDec| BOOT::|htPred2English,gn|
            BOOT::|prepareData| BOOT::|protectedNagCall|
            BOOT::|axiomType| BOOT::|DescendCode|
            BOOT::|SetFunctionSlots|
            BOOT::|InvestigateConditions,update|
            BOOT::|htSystemVariables,functionTail| VMLISP:STRPOS
            BOOT::|replaceExitEtc,fn| BOOT::|compNoStacking1|
            BOOT::|compClam| BOOT::|getModemapListFromDomain|
            BOOT::|say2Split| BOOT::|compColonInside| BOOT::|haddProp|
            BOOT::|npEnclosed| BOOT::|hputNewProp|
            BOOT::ASHARPMKAUTOLOADFUNCTOR
            BOOT::ASHARPMKAUTOLOADCATEGORY BOOT::|addCoreModemap|
            BOOT::|getMatchingRightPren| BOOT::|checkHTargs|
            BOOT::|mkOperatorEntry| BOOT::|catPairUnion|
            BOOT::|lookupUF| BOOT::|newLookupInCategories|
            BOOT::|lookupFF| BOOT::|simpHasSignature|
            BOOT::|compareSig| BOOT::|lazyCompareSigEqual|
            BOOT::|lookupInAddChain| BOOT::|lookupInCategories|
            BOOT::|lookupInTable| BOOT::|lookupDisplay|
            BOOT::|dbShowOpConditions|
            BOOT::|dbShowOpParameterJump|
            BOOT::|dbShowOpImplementations| BOOT::|dbShowOpParameters|
            BOOT::|dbShowOpOrigins| BOOT::|dbShowOpSignatures|
            BOOT::|getSigSubst| BOOT::|optDeltaEntry|
            BOOT::|lazyMatchArg| BOOT::|nrunNumArgCheck|
            BOOT::|nextown2| BOOT::|semchkProplist|
            BOOT::|interpREPEAT| BOOT::|makeCommonEnvironment,fn|
            BOOT::|compMapCondFun| BOOT::|compApplyModemap|
            BOOT::|compMapCond| BOOT::|compMapCond'|
            BOOT::|compToApply| BOOT::REDUCE-N BOOT::|applyMapping|
            BOOT::|compFormWithModemap| BOOT::|compAtomWithModemap|
            BOOT::|ancestorsRecur| BOOT::|checkCommentsForBraces|
            BOOT::|dbShowOpDocumentation| BOOT::|dbShowOpNames|
            BOOT::REDUCE-N-1 BOOT::|dbGatherData| BOOT::|dbConsHeading|
            BOOT::REDUCE-N-2 BOOT::|termMatch| BOOT::|matchAnySegment?|
            BOOT::|replaceExitEtc| BOOT::|put| BOOT::|checkAndDeclare|
            BOOT::|hasSigInTargetCategory| BOOT::READ-SPAD1
            BOOT::|mkDetailedGrepPattern| BOOT::|displayInfoOp|
            BOOT::|dbShowInfoOp| BOOT::|compReduce1| BOOT::|letPrint3|
            BOOT::|intloopSpadProcess| BOOT::|zagApp|
            BOOT::|findBalancingBrace| BOOT::|appelse| BOOT::|appChar|
            BOOT::|appInfix| BOOT::|htMakeButtonSaturn|
            BOOT::|vconcatapp| BOOT::|superSubApp| BOOT::|xLate|
            BOOT::|appconc| BOOT::MAKELIB BOOT::|appparu|
            BOOT::|charySemiColon| BOOT::|charyElse|
            BOOT::|charyEquatnum| BOOT::|bcFindString|
            BOOT::|charySplit| BOOT::|charyMinus| VMLISP::DCQGENEXP
            BOOT::|augProplistOf| BOOT::|putHist|
            BOOT::|evalUntargetedADEF| BOOT::|evalTargetedADEF|
            BOOT::|mergeInPlace| BOOT::|upLoopIterSTEP|
            BOOT::|mergeSort| BOOT::|interpLoop| BOOT::|collectStream|
            BOOT::|collectStream1| BOOT::|lazyMatch|
            BOOT::|lazyMatchArgDollarCheck|
            BOOT::|interpCOLLECTbodyIter| BOOT::|lookupInCompactTable|
            BOOT::|sayLooking| BOOT::|upStreamIterSTEP|
            BOOT::|lookupIncomplete| BOOT::|newLookupInAddChain|
            BOOT::|hashNewLookupInCategories| BOOT::|lookupComplete|
            BOOT::|newLookupInCategories1| BOOT::|lazyMatchAssocV|
            BOOT::|collectSeveralStreams| BOOT::|mkIterZippedFun|
            BOOT::|compareSigEqual| BOOT::|mkInterpTargetedADEF|
            BOOT::|compileTargetedADEF| BOOT::|collectOneStream|
            BOOT::|oldCompLookupNoDefaults| BOOT::|evalTuple|
            BOOT::|interpIF| BOOT::|getReduceFunction|
            BOOT::|NRTgetMinivectorIndex| BOOT::|xlPrematureFin|
            BOOT::|xlPrematureEOF| BOOT::|xlCmdBug| BOOT::|xlIfBug|
            BOOT::|xlSkippingFin| BOOT::|xlConsole| BOOT::|xlOK|
            BOOT::|xlSkip| BOOT::|lookupInDomainVector|
            BOOT::|basicLookupCheckDefaults| BOOT::|basicLookup|
            BOOT::|oldCompLookup| BOOT::|analyzeUndeclaredMap|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T) T) BOOT::|compDefineLisplib|
            BOOT::|compConLib1| BOOT::|addModemap| BOOT::|mmCost|
            BOOT::|findFunctionInDomain1| BOOT::/WRITEUPDATE
            BOOT::|mmCost0| BOOT::|/D,2,LIB|
            BOOT::|processFunctorOrPackage| BOOT::|compOrCroak1,fn|
            BOOT::/D-2 BOOT::|BesselIBackRecur| BOOT::|invokeFortran|
            BOOT::|nagCall| BOOT::|makeFort| BOOT::|addModemapKnown|
            BOOT::|addModemap1| BOOT::|addEltModemap| BOOT::|compHash|
            BOOT::|compHashGlobal| BOOT::|compApply| BOOT::|kdPageInfo|
            BOOT::|addModemap0| BOOT::|bracketagglist|
            BOOT::|attributeLookupExport| BOOT::|upDollarTuple|
            BOOT::|xlIfSyntax| BOOT::|incLine1|
            BOOT::|oldAxiomCategoryLookupExport| BOOT::|genMapCode|
            BOOT::|putMapCode|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T *) T) BOOT::|pfLeaf| BOOT::BPITRACE
            VMLISP:|remove| VMLISP:RREAD VMLISP:REMOVEQ
            BOOT::MATCH-LISP-TAG VMLISP:NREMOVE VMLISP:NREMOVEQ
            BOOT::|tokConstruct| BOOT::|pfAdd|
            BOOT:|ByteFileReadLineIntoString| BOOT:MATCH-TOKEN)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T *) T) BOOT::|ncHardError|
            BOOT::TOKEN-INSTALL BOOT::|ncSoftError| BOOT::|lnCreate|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T) T) BOOT::|findFunctionInCategory|
            BOOT::|Mp2MpAux1| BOOT::|Mp2MpAux0| BOOT::|Expr2Dmp1|
            BOOT::|Mp2SimilarDmp| BOOT::|bigopAppAux|
            BOOT::|findFunctionInDomain| BOOT::|abbreviationError|
            BOOT::|lisplibError| BOOT::|invokeNagman|
            BOOT::|mkNewModemapList| BOOT::|mkDiffAssoc|
            BOOT::|dbGatherThenShow| BOOT::|appInfixArg|
            BOOT::|lazyOldAxiomDomainLookupExport|
            BOOT::|oldAxiomDomainLookupExport|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T T T T T) T)
            BOOT::|displayDomainOp|)) 
(PROCLAIM '(FTYPE (FUNCTION (T T T T *) T) VMLISP:RPLACSTR)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T T T T) T) BOOT::|P2DmpAux|
            BOOT::|makeSpadFun|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T T) T) BOOT::|compDefineCategory2|
            BOOT::|P2MpAux| BOOT::|makeFort1|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T T T T T T T) T) BOOT::|writeCFile|
            BOOT::|Mp2MpAux2|)) 
(PROCLAIM '(FTYPE (FUNCTION (T T T T T *) T) BOOT::|msgCreate|)) 
(PROCLAIM
    '(FTYPE (FUNCTION NIL *) BOOT::|generateResultsName|
            BOOT::|generateDataName| BOOT::|htShowPage|
            BOOT::|PARSE-Label| BOOT::|bcMatrix| BOOT::|PARSE-Primary1|
            BOOT::|PARSE-Enclosure| BOOT::|bcDraw2DSolve|
            BOOT::|PARSE-Selector| BOOT::|PARSE-Category|
            BOOT::|PARSE-Option| BOOT::|PARSE-TokenOption|
            BOOT::|PARSE-Sexpr1| BOOT::|PARSE-Sexpr|
            BOOT::|PARSE-Scripts| BOOT::|PARSE-SpecialCommand|
            BOOT::|PARSE-FloatBasePart| BOOT::|PARSE-FloatBase|
            BOOT::|PARSE-Leave| BOOT::|e02aef| BOOT::|e04ucfCopOut|
            BOOT::|c02agf| BOOT::|c02aff| BOOT::|e02adf| BOOT::|c05pbf|
            VMLISP:RECLAIM BOOT::MKPROMPT BOOT::|sendHTErrorSignal|
            BOOT::|testPage| BOOT::|e01sef| BOOT::|e01saf|
            BOOT::|e01daf| BOOT::|e01bhf| BOOT::|e01bgf| BOOT::|e01bff|
            BOOT::|e01bef| BOOT::|e01baf| BOOT::|e02zaf| BOOT::|e02gaf|
            BOOT::|e02dff| BOOT::|e02def| BOOT::|e02ddf| BOOT::|e02dcf|
            BOOT::|e02daf| BOOT::|e02bef| BOOT::|e02bdf|
            BOOT::|minusInfinity| BOOT::|plusInfinity|
            BOOT::CLEARDATABASE BOOT::NBOOT-LEXPR
            BOOT::BOOT-LEXPR BOOT::|executeQuietCommand|
            BOOT::|serverSwitch| BOOT::|scanS|
            BOOT::|sendNagmanErrorSignal| BOOT::|d01gbf| BOOT::|d01gaf|
            BOOT::|d01fcf| BOOT::|d01bbf| BOOT::|d01asf|
            BOOT::|d02rafCopOut| BOOT::|d02raf| BOOT::|d02kef|
            BOOT::|d02gbf| BOOT::|d02gaf| BOOT::|d02ejf| BOOT::|d02cjf|
            BOOT::|d02bhf| BOOT::|d02bbf| BOOT::|e02ahf|
            BOOT::|d03edfShort| BOOT::|d03edfLong| BOOT::|d03eefInput|
            BOOT::|d03faf| BOOT::|d03eef| BOOT::|d03edf|
            BOOT::|htSystemVariables| BOOT::|htSetVars|
            BOOT::|mkSetTitle| BOOT::|npCategory|
            BOOT::|htsv| BOOT::|npDefinitionItem| BOOT::|npDefn|
            BOOT::|npMacro| BOOT::|npMDEFinition| BOOT::|npRule|
            BOOT::RESETHASHTABLES BOOT::READSPADEXPR
            BOOT::|batchExecute| BOOT::|c05nbf| BOOT::|c05adf|
            BOOT::|c06gsf| BOOT::|c06gqf| BOOT::|c06gcf| BOOT::|c06gbf|
            BOOT::|c06fuf| BOOT::|c06frf| BOOT::|c06fqf| BOOT::|c06fpf|
            BOOT::|c06ekf| BOOT::|c06ecf| BOOT::|c06ebf| BOOT::|c06eaf|
            BOOT::|s17def| BOOT::|s17dcf| BOOT::|s17akf| BOOT::|s17ajf|
            BOOT::|s17ahf| BOOT::|s17agf| BOOT::|s17aff| BOOT::|s17aef|
            BOOT::|s17adf| BOOT::|s17acf| BOOT::|s15aef| BOOT::|s15adf|
            BOOT::|s14baf| BOOT::|s14abf| BOOT::|s14aaf| BOOT::|s13adf|
            BOOT::|s13acf| BOOT::|s13aaf| BOOT::|s01eaf| BOOT::|s21bdf|
            BOOT::|s21bcf| BOOT::|s21bbf| BOOT::|s21baf| BOOT::|s20adf|
            BOOT::|e02agf| BOOT::|s20acf| BOOT::|d01aqf| BOOT::|s19adf|
            BOOT::|d01apf| BOOT::|s19acf| BOOT::|d01anf| BOOT::|d01amf|
            BOOT::|d01alf| BOOT::|s19abf| BOOT::|d01akf| BOOT::|s19aaf|
            BOOT::|d01ajf| BOOT::|s18def| BOOT::|s18dcf| BOOT::|s18aff|
            BOOT::|s18aef| BOOT::|s18adf| BOOT::|s18acf| BOOT::|f04qaf|
            BOOT::|f04mcf| BOOT::|f04mbf| BOOT::|f04maf| BOOT::|f04jgf|
            BOOT::|f04faf| BOOT::|f04axf| BOOT::|f04atf| BOOT::|f04asf|
            BOOT::|quit| BOOT::|f04arf| BOOT::|quitSpad2Cmd|
            BOOT::|f04adf| BOOT::|pquit| BOOT::|pquitSpad2Cmd|
            BOOT::CONTINUE BOOT::|continue| BOOT::|purgeLocalLibdb|
            BOOT::|dbSplitLibdb| BOOT::|f07fef| BOOT::|f07fdf|
            BOOT::|f07aef| BOOT::|f07adf| BOOT::|copyright|
            BOOT::|s17dlf| BOOT::|s17dhf| BOOT::|s17dgf| BOOT::|f02xef|
            BOOT::|f02wef| BOOT::|f02fjf| BOOT::|f02bjf| BOOT::|f02bbf|
            BOOT::|f02axf| BOOT::|f02awf| BOOT::|f02akf| BOOT::|f02ajf|
            BOOT::|f02agf| BOOT::|htShowPageNoScroll| BOOT::|f02aff|
            BOOT::|f02aef| BOOT::|f02adf| BOOT::|f02abf| BOOT::|f02aaf|
            BOOT::|measure| BOOT::|writeSaturnSuffix| 
            BOOT::|htErrorStar|
            BOOT::|queryClients| BOOT::|onDisk| BOOT::|endHTPage|
            BOOT::|readSpadProfileIfThere| BOOT::|bcDraw3Dpar1|
            BOOT::|bcDraw3Dpar| BOOT::|htShowPageStarSaturn|
            BOOT::|htShowPageStar| BOOT::|bcDraw3Dfun|
            BOOT::|bcDraw2Dpar| BOOT::|bcSum| BOOT::|bcSeries|
            BOOT::|bcProduct| BOOT::|bcLimit|
            BOOT::|bcIndefiniteIntegrate| BOOT::|bcDraw|
            BOOT::|bcDifferentiate| BOOT::|bcDefiniteIntegrate|
            BOOT::|bcDraw2Dfun| BOOT::MAKE-TAGS-FILE BOOT::|bcSolve|
            BOOT::|npPrimary1| BOOT::|e02bcf| BOOT::|e02bbf|
            BOOT::|e02baf| BOOT::|e02akf| BOOT::|e02ajf| BOOT::|e04ycf|
            BOOT::|e04ucf| BOOT::|e04naf| BOOT::|e04mbf| BOOT::|e04jaf|
            BOOT::|e04gcf| BOOT::|e04fdf| BOOT::|e04dgf| BOOT::|f01ref|
            BOOT::|f01rdf| BOOT::|f01rcf| BOOT::|f01qef| BOOT::|f01qdf|
            BOOT::|f01qcf| BOOT::|f01mcf| BOOT::|f01maf| BOOT::|f01bsf|
            BOOT::|f01brf|)) 
(PROCLAIM
    '(FTYPE (FUNCTION NIL T) BOOT::|getCodeVector|
            BOOT:PARSE-IDENTIFIER BOOT::|axDoLiterals|
            BOOT::|PARSE-Suffix| BOOT:CURRENT-TOKEN
            BOOT::|PARSE-TokTail| BOOT::|PARSE-InfixWith|
            BOOT::|PARSE-With| BOOT::|PARSE-Form|
            BOOT::|PARSE-Reduction| BOOT::|PARSE-SemiColon|
            BOOT::|PARSE-Iterator| BOOT::|PARSE-Primary|
            BOOT::|PARSE-ElseClause| BOOT::|PARSE-Conditional|
            BOOT::|PARSE-Name| BOOT::|PARSE-Sequence|
            BOOT::|PARSE-Data| BOOT::|PARSE-FormalParameter|
            BOOT::|PARSE-IntegerTok| BOOT::|PARSE-String|
            BOOT::|PARSE-Quad| BOOT::|PARSE-VarForm|
            BOOT::|PARSE-Qualification| BOOT::|PARSE-Prefix|
            BOOT::|PARSE-Infix| BOOT::|PARSE-Application|
            BOOT:CURRENT-SYMBOL BOOT::|clearCmdSortedCaches|
            BOOT::|PARSE-Statement| BOOT::|PARSE-Command|
            BOOT::|updateInCoreHist| BOOT::|processSynonyms|
            BOOT::|disableHist| BOOT::|PARSE-IteratorTail|
            BOOT::|histFileName| BOOT::|PARSE-OpenBrace|
            BOOT::|PARSE-Sequence1| BOOT::|PARSE-OpenBracket|
            BOOT::|PARSE-PrimaryNoFloat| BOOT:FAIL BOOT::|PARSE-Float|
            BOOT::|PARSE-PrimaryOrQM| BOOT::|PARSE-TokenList|
            BOOT::|PARSE-AnyId| BOOT::|resetInCoreHist|
            BOOT::|PARSE-TokenCommandTail| BOOT::|isTokenDelimiter|
            BOOT::|PARSE-ScriptItem| BOOT::|PARSE-CommandTail|
            BOOT::|historySpad2Cmd| BOOT::|PARSE-FormalParameterTok|
            BOOT::|PARSE-SpecialKeyWord|
            BOOT::|writeHistModesAndValues| BOOT::|PARSE-FloatTok|
            BOOT::|PARSE-FloatExponent| BOOT::|updateHist|
            BOOT::|initHistList| BOOT::|initHist| BOOT::|PARSE-Exit|
            BOOT::|oldHistFileName| BOOT:PARSE-NUMBER
            BOOT::|PARSE-Return| BOOT::|PARSE-ReductionOp|
            BOOT::|PARSE-LabelExpr| BOOT::|PARSE-Import|
            BOOT::|writeHiFi| BOOT::|PARSE-Loop|
            BOOT::|updateCurrentInterpreterFrame| BOOT::|PARSE-Seg|
            BOOT:CURINPUTLINE BOOT::|profileWrite| BOOT:PARSE-BSTRING
            BOOT:NEXT-TOKEN BOOT:IOSTAT BOOT::|isPackageFunction|
            BOOT:UNGET-TOKENS BOOT::|setOptKeyBlanks|
            BOOT::|getInfovecCode| BOOT::|NRTmakeSlot1Info|
            BOOT::|reportOnFunctorCompilation| BOOT:BUMPCOMPERRORCOUNT
            BOOT::|displayMissingFunctions| BOOT:PARSE-STRING
            BOOT:ADVANCE-TOKEN BOOT::ERRHUH BOOT:CURRENT-CHAR
            VMLISP:$TOTAL-ELAPSED-TIME BOOT::IS-GENSYM
            BOOT::|getSpecialCaseAssoc|
            BOOT::|makeConstructorsAutoLoad|
            BOOT::|displayExposedGroups|
            BOOT::|displayHiddenConstructors|
            BOOT::|displaySemanticErrors| BOOT::|clock|
            BOOT::|startTimer| BOOT::|spadPrompt| BOOT::|stopTimer|
            BOOT::|quadSch| BOOT::/TRACEREPLY BOOT::TRACELETREPLY
            BOOT::|voidValue| BOOT::/COMP BOOT::|getDateAndTime|
            BOOT::|coercionFailure| VMLISP:EMBEDDED
            BOOT::|printableArgModeSetList| BOOT::|asList|
            BOOT::|boot2LispError| BOOT::|extendConstructorDataTable|
            BOOT::|fin| BOOT::PARSERSTATE BOOT::|New,ENTRY,1|
            BOOT::|mkLowerCaseConTable| BOOT::NEW-LEXPR-INTERACTIVE
            BOOT::NEW-LEXPR BOOT::|spadThrow| BOOT::INITIALIZE
            BOOT::NEW BOOT::|New,ENTRY| BOOT::|traceComp|
            BOOT::|New,ENTRY1| BOOT::|New,ENTRY,SYS| BOOT::NEWPO
            BOOT::|returnToReader| BOOT::|returnToTopLevel| BOOT::TOP
            BOOT::|serverLoop| BOOT::|describeSetOutputTex|
            BOOT::|describeSetOutputFortran|
            BOOT::|describeSetLinkerArgs|
            BOOT::|describeProtectSymbols|
            BOOT::|describeOutputLibraryArgs|
            BOOT::|describeSetFortDir| BOOT::|describeFortPersistence|
            BOOT::|describeSetFortTmpDir|
            BOOT::|describeProtectedSymbolsWarning|
            BOOT::|describeSetStreamsCalculate|
            BOOT::|describeSetOutputFormula|
            BOOT::|describeInputLibraryArgs|
            BOOT::|resetWorkspaceVariables| BOOT::|describeSetNagHost|
            BOOT::|describeAsharpArgs| BOOT::|describeSetOutputAlgebra|
            BOOT::|sayAllCacheCounts| BOOT::|describeSetFunctionsCache|
            BOOT::|nangenericcomplex| BOOT::|createTypeEquivRules|
            BOOT::|createResolveTTRules| BOOT::|createResolveTMRules|
            BOOT::|bcBlankLine| BOOT::|browserAutoloadOnceTrigger|
            BOOT::|scanKeyTableCons| BOOT::|scanToken| BOOT::|scanEsc|
            BOOT::|scanError| BOOT::|scanEscape| BOOT::|scanNumber|
            BOOT::|asharpConstructors| BOOT::|scanString|
            BOOT::|scanSpace| BOOT::|scanPunct| BOOT::|scanNegComment|
            BOOT::|startsNegComment?| BOOT::|scanComment|
            BOOT::|startsComment?| BOOT::|scanPunCons|
            BOOT::|scanDictCons| BOOT::|resetStackLimits|
            BOOT::|npRecoverTrap| BOOT::|syGeneralErrorHere|
            BOOT::|DPname| BOOT::|pfNoPosition| VMLISP:CURRENTTIME
            BOOT::|buildHtMacroTable| BOOT::|checkWarningIndentation|
            BOOT::|npDecl| BOOT::|npType| VMLISP:$SCREENSIZE
            BOOT::|npAmpersand| BOOT::|npName| BOOT::|npFromdom|
            BOOT::|npSCategory| BOOT::|npPrimary| BOOT::|npState|
            BOOT::|npDefaultValue| BOOT::|npAssignVariableName|
            BOOT::|npPDefinition| BOOT::|npDollar|
            BOOT::|npSQualTypelist| 
            BOOT::|npCategoryL| 
            BOOT::|npProduct| BOOT::|npIterators|
            BOOT::|npWhile|
            BOOT::|displayPreCompilationErrors| 
            BOOT::|npForIn| BOOT::|npGives|
            BOOT::|npLogical| 
            BOOT::|npExpress| 
            BOOT::|npExpress1| 
            BOOT::|npCommaBackSet|  BOOT::|npQualType|
            VMLISP:$TOTAL-GC-TIME BOOT::|npADD|
            BOOT::|npConditionalStatement|
            BOOT::|npQualifiedDefinition| BOOT::|npPushId|
            BOOT::|npVariable| BOOT::|npDefinitionOrStatement|
            BOOT::|npAssignVariable| BOOT::|npColon|
            BOOT::|npAssignment| BOOT::|profileDisplay|
            BOOT:|TimeStampString| BOOT::|computeDomainVariableAlist|
            BOOT::MONITOR-READINTERP BOOT::|npSingleRule|
            BOOT::MONITOR-UNTESTED BOOT::|npDefTail| BOOT::|npQuiver|
            BOOT::MONITOR-PERCENT BOOT::|npDef| BOOT::|npStatement|
            BOOT::|npImport| BOOT::|npTyping| BOOT::|npItem|
            BOOT::|npQualDef| BOOT::|npAssign| BOOT::MONITOR-AUTOLOAD
            BOOT::|npDefinition| BOOT::MONITOR-RESULTS
            BOOT::MONITOR-END BOOT::|npPop3| BOOT::MONITOR-INITTABLE
            BOOT::|npAtom2| BOOT::|npInfixOperator| BOOT::|npPower|
            BOOT::MONITOR-HELP BOOT::|npMatch| BOOT::MONITOR-REPORT
            BOOT::|npMdef| BOOT::|reportInstantiations|
            BOOT::|npPrimary2| BOOT::?DOMAINS BOOT::|?domains|
            BOOT::|npSuch| BOOT::|npMDEF| BOOT::|npDisjand|
            BOOT::|npInfixOp| BOOT::|npDiscrim|
            BOOT::|clearConstructorAndLisplibCaches|
            BOOT::|npVariableName| BOOT::|clearConstructorCaches|
            BOOT::|clearClams| BOOT::|clearCategoryCaches|
            BOOT::|cacheStats| BOOT::|reportAndClearClams|
            BOOT::|traceDown| BOOT::|statRecordInstantiationEvent|
            BOOT::|tc| BOOT::GET-CURRENT-DIRECTORY
            BOOT::|removeAllClams| BOOT::|clamStats| BOOT::|npPop1|
            BOOT::|npTrap| BOOT::|npApplication| BOOT::|npPop2|
            BOOT::|npApplication2| BOOT::WRITE-WARMDATA
            BOOT::WRITE-INTERPDB BOOT::|npAssignVariablelist|
            BOOT::|clearHashReferenceCounts| BOOT::|npSignature|
            BOOT::|pfNothing| BOOT::|npSigItemlist| BOOT::|npEncl|
            BOOT::|npBDefinition| BOOT::|npPrefixColon| BOOT::|npNext|
            BOOT::|allOperations| BOOT::WRITE-CATEGORYDB
            BOOT::WRITE-OPERATIONDB BOOT::WRITE-BROWSEDB
            BOOT::WRITE-COMPRESS BOOT::INITIAL-GETDATABASE
            BOOT::CATEGORYOPEN BOOT::BROWSEOPEN BOOT::OPERATIONOPEN
            BOOT::INTERPOPEN BOOT::COMPRESSOPEN
            BOOT::CREATE-INITIALIZERS BOOT::|poNoPosition|
            BOOT::|saveDependentsHashTable| BOOT::|saveUsersHashTable|
            BOOT::|mkTopicHashTable| BOOT::TOKEN-STACK-SHOW
            BOOT::|system| BOOT::|terminateSystemCommand|
            BOOT::|getSystemCommandLine| BOOT::TERMCHR
            BOOT::IOSTREAMS-SHOW BOOT::|displayExposedConstructors|
            BOOT::|finalizeDocumentation| BOOT::REDUCE-STACK-SHOW
            BOOT::CLEAR-HIGHLIGHT BOOT::RESET-HIGHLIGHT BOOT::RESTART0
            START BOOT::|libraryFileLists| BOOT::|waitForViewport|
            BOOT::|setViewportProcess|
            BOOT::|installStandardTestPackages| BOOT::|printCopyright|
            BOOT::AKCL-VERSION BOOT::SET-RESTART-HOOK
            BOOT::|undoINITIALIZE| BOOT::|simpCategoryTable|
            BOOT::|simpTempCategoryTable| BOOT::COMPFIN
            BOOT::INPUT-CLEAR BOOT::|genTempCategoryTable| BOOT::|cc|
            BOOT::|initNewWorld| BOOT::|genCategoryTable|
            BOOT::|dbOpsExposureMessage| BOOT::|htSayUnexposed|
            BOOT::|NRTmakeCategoryAlist|
            BOOT::|NRTgenFinalAttributeAlist| BOOT::|dcSizeAll|
            BOOT::|initialiseIntrinsicList| BOOT::|tempLen|
            BOOT::|changeDirectoryInSlot1| BOOT::|NRTaddDeltaCode|
            BOOT::|ncIntLoop| BOOT::SPECIALCASESYNTAX
            BOOT::|newFortranTempVar| BOOT::|currentSP|
            BOOT::|elapsedTime| BOOT::|traceUp|
            BOOT::|getIntrinsicList| BOOT::|getInterpMacroNames|
            BOOT::|synonymSpad2Cmd| BOOT::|interpFunctionDepAlists|
            BOOT::NPPPG BOOT::|isFalse| BOOT::NPPPF BOOT::NPPPFF
            BOOT::|printDashedLine| BOOT::|satBreak| BOOT::|up|
            BOOT::|getWorkspaceNames| BOOT::|getParserMacroNames|
            BOOT::|oldCompilerAutoloadOnceTrigger| BOOT::|TrimCF|
            BOOT::|displayWorkspaceNames| BOOT::UP
            BOOT::|displayWarnings| BOOT::|buildGloss|
            BOOT::|nextInterpreterFrame| BOOT::|down|
            BOOT::|displayFrameNames| BOOT::DOWN
            BOOT::|previousInterpreterFrame| BOOT::SAME BOOT::|same|
            BOOT::|mkUsersHashTable| BOOT::|allConstructors|
            BOOT::|frameNames| BOOT::|sayShowWarning| BOOT::|credits|
            BOOT::|mkDependentsHashTable|
            BOOT::|buildDefaultPackageNamesHT|
            BOOT::|dbAugmentConstructorDataTable| FOAM:|fiGetDebugVar|
            BOOT::|menuButton| BOOT::|htSaturnBreak| BOOT::|random|
            BOOT::|dbConsExposureMessage| BOOT::|mkSigPredVectors|
            BOOT::FIRST-ERROR BOOT::|writeSaturnPrefix| BOOT::|on|
            BOOT::|offDisk| BOOT::|htBigSkip| 
            BOOT::|traceReply| BOOT::|?t|
            BOOT::SKIP-BLANKS BOOT::|pspacers| BOOT::NEXT-LINES-SHOW
            BOOT::|resetCounters| 
            BOOT::SPAD_SHORT_ERROR BOOT::|pcounters|
            BOOT::SPAD_LONG_ERROR BOOT::INIT-BOOT/SPAD-READER
            BOOT::NEXT-LINES-CLEAR BOOT::|resetTimers|
            BOOT::|resetSpacers| BOOT::|ptimers|
            BOOT::|PARSE-Expression|
            BOOT::|oldParserAutoloadOnceTrigger| BOOT::|boot-LEXPR|
            BOOT::|reportCount| BOOT::NEW-LEXPR1 BOOT::|spadReply|
            BOOT::|listConstructorAbbreviations| BOOT::BOOT-SKIP-BLANKS
            BOOT::|updateFromCurrentInterpreterFrame|
            BOOT::PARSE-ARGUMENT-DESIGNATOR BOOT::PARSE-KEYWORD
            BOOT::PARSE-SPADSTRING
            BOOT::|initializeInterpreterFrameRing| BOOT::READ-SPAD-1
            BOOT::READBOOT BOOT::|reportWhatOptions|
            BOOT::TERSYSCOMMAND BOOT::|PARSE-NewExpr|
            BOOT::|makeInitialModemapFrame|
            BOOT::|createCurrentInterpreterFrame|
            BOOT::|getParserMacros| BOOT::|clearCmdCompletely|
            BOOT::|clearCmdAll| BOOT::|clearMacroTable|
            BOOT::|initializeSystemCommands| BOOT::|htSayHrule|
            BOOT::|htEndTable| BOOT::|mkMenuButton| BOOT::|runspad|
            BOOT::|htBeginTable| BOOT::|ncTopLevel|
            BOOT::|spadStartUpMsgs| BOOT::|initializeRuleSets|
            BOOT::|loadExposureGroupData|
            BOOT::|statisticsInitialization| BOOT::|ut|
            BOOT::|printStatisticsSummary| BOOT::|printStorage|
            BOOT::|prTraceNames| BOOT::|spad| BOOT::|spadpo|
            BOOT::|intloop| BOOT::|off| BOOT::|htEndTabular|
            BOOT::|htSaySaturnAmpersand| BOOT::|page|
            BOOT::|clearFrame| BOOT::|getSaturnExampleList|
            BOOT::|saturnTERPRI| BOOT::|bcSadFaces| BOOT::YEARWEEK
            BOOT::|npBPileDefinition| BOOT::|npTypified|
            BOOT::|npVariablelist| BOOT::|npTagged| BOOT::|bcvspace|
            BOOT::|npTypeStyle| BOOT::|npColonQuery| BOOT::|npPretend|
            BOOT::|npRestrict| BOOT::|npCoerceTo| BOOT::|npRelation|
            BOOT::|npFirstTok| BOOT::|npVoid| BOOT::|npSLocalItem|
            BOOT::NPPCG BOOT::|npLocalItemlist| BOOT::|npFix|
            BOOT::NPPCFF BOOT::|npDefaultItemlist| BOOT::|npSynthetic|
            BOOT::|npAmpersandFrom| BOOT::|npBy| BOOT::|npLet|
            BOOT::|npTypeVariable| BOOT::|npSignatureDefinee|
            BOOT::|npAtom1| BOOT::|npConstTok| BOOT::|npLocalItem|
            BOOT::|npLocalDecl| BOOT::|npExport| BOOT::|npLocal|
            BOOT::|npInline| BOOT::|npFree| BOOT::|npInterval|
            BOOT::|npSegment| BOOT::|npArith| BOOT::|npBreak|
            BOOT::|npDefaultItem| BOOT::|npDefaultDecl|
            BOOT::|npReturn| BOOT::|npSemiBackSet|
            BOOT::|npSDefaultItem| BOOT::|npTypeVariablelist|
            BOOT::|npPileDefinitionlist| BOOT::|npDefinitionlist|
            BOOT::|npComma| BOOT::|npSymbolVariable| BOOT::|npId|
            BOOT::|npSum| BOOT::|npTerm| BOOT::|npRemainder|
            BOOT::|npIterate| BOOT::|npLoop| BOOT::|npSuchThat|
            BOOT::|npSelector| BOOT::|npIterator| BOOT::|npSigItem|
            BOOT::|npSigDecl| BOOT::|statRecordLoadEvent|
            BOOT::|computeElapsedTime| BOOT::|npLambda|
            BOOT::|computeElapsedSpace| BOOT::|popTimedName|
            BOOT::|npBacksetElse| BOOT::|peekTimedName|
            BOOT::|npQualTypelist| BOOT::|npPileExit| BOOT::|npExit|
            BOOT::|statisticsSummary| BOOT::|displayHeapStatsIfWanted|
            BOOT::|update| BOOT:RESTART BOOT:|version| BOOT:/EMBEDREPLY
            BOOT:NEXTINPUTLINE BOOT:|Category| BOOT::|intUnsetQuiet|
            BOOT::|intSetQuiet| BOOT:POP-REDUCTION
            BOOT::|intSetNeedToSignalSessionManager|
            BOOT::|intNewFloat| BOOT::|leaveScratchpad| BOOT::|ncError|
            BOOT::|incConsoleInput| BOOT:NEXT-CHAR
            BOOT::|inclmsgCmdBug| BOOT::|inclmsgIfBug|
            BOOT::|inclmsgFinSkipped| BOOT::|inclmsgConsole|
            COMPILER::GAZONK-NAME HELP BOOT:ADVANCE-CHAR
            BOOT::|rbrkSch| BOOT::|lbrkSch|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (*) *) BOOT::|makeSpadCommand| BOOT::/RF
            BOOT::|/RQ,LIB| VMLISP:$ERASE BOOT::|mkGrepPattern1|
            BOOT::|nothingFoundPage| BOOT::|dbNotAvailablePage|
            BOOT::|htSetCache| BOOT::NEXT-LINE BOOT::/EF
            BOOT::INIT-MEMORY-CONFIG BOOT::/RQ BOOT::|newGoGet|
            BOOT::|dbShowOps| BOOT::|oPage| BOOT::|aPage|
            BOOT::|buildLibdb| BOOT::|emptySearchPage|
            BOOT::|conOpPage1| BOOT::|conPage| BOOT::|kPage|
            BOOT::|genSearch| BOOT::|dbShowCons| BOOT::|form2HtString|
            BOOT::|bcFinish| BOOT::|Undef| BOOT:META-SYNTAX-ERROR)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T) *) BOOT::|numArgs|
            BOOT::|formatSignatureArgs0| BOOT::|formatSignatureArgs|
            BOOT::|sayWidth| BOOT::SRCABBREVS BOOT::|bcMatrixGen|
            BOOT::|bcwords2liststring| BOOT::|bcGenExplicitMatrix|
            BOOT::|bcGen| BOOT::|bcInputMatrixByFormulaGen|
            BOOT::|bcReadMatrix| BOOT::|systemCommand|
            BOOT::|safeWritify| BOOT::|unAbbreviateKeyword|
            BOOT::|replacePercentByDollar| BOOT::|e04ucfSolve|
            BOOT::|brightPrint0AsTeX| BOOT::|sayDisplayStringWidth|
            BOOT:GET-TOKEN BOOT::|initializeLisplib| BOOT::|getMsgTag|
            BOOT::|poFileName| BOOT::|mac0InfiniteExpansion,name|
            BOOT::|NRTtypeHack| BOOT::|getMsgPos2| BOOT::|e02agfSolve|
            BOOT::|c02agfGen| BOOT:NUMOFARGS BOOT::|c02affSolve|
            BOOT::|c02affGen| BOOT::|c02agfSolve| BOOT::|c05adfGen|
            BOOT::|outputTran| BOOT::|replaceSharpCalls|
            BOOT::/UNTRACE-0 BOOT::|doReplaceSharpCalls| BOOT::DEFTRAN
            BOOT::LIST2STRING BOOT::DEF-WHERECLAUSELIST BOOT::DEF-ISNT
            BOOT::|quoteSuper| BOOT::|quoteSub| BOOT::MK_LEFORM
            BOOT::MK_LEFORM-CONS BOOT::|aggSuper|
            BOOT::|oldParseString| BOOT::|outformWidth| BOOT::|aggSub|
            BOOT::|agggwidth| BOOT::|agggsuper| BOOT::|agggsub|
            BOOT::|obj2String| BOOT::|compileFileQuietly|
            BOOT::|exptSub| BOOT::|mathPrint| BOOT::|rootSub|
            BOOT::|parseTransform| BOOT::|overbarWidth|
            BOOT::MONITOR-EVALAFTER BOOT::|overlabelWidth|
            BOOT::|object2String| BOOT::|e02aefGen| BOOT::/TRACE-0
            BOOT::LENGTH2STR BOOT::|matSub| BOOT::/MKINFILENAM
            BOOT::|qTSuper| BOOT::|qTSub| BOOT::|sayMSGNT|
            VMLISP:BPINAME BOOT::|e01safSolve| BOOT::|e01befSolve|
            BOOT::|linkToHTPage| BOOT::|killHTPage|
            BOOT::|startReplaceHTPage| BOOT::|e01dafSolve|
            BOOT::|startHTPopUpPage| BOOT::|e01bffSolve|
            BOOT::|e01bafGen| BOOT::|e01sefGen| BOOT::|e01bhfGen|
            BOOT::|e01bhfSolve| BOOT::|e01dafGen| BOOT::|e01bgfGen|
            BOOT::|e01befGen| BOOT::|e02dcfColdGen| BOOT::|e02bafGen|
            BOOT::|e02agfGen| BOOT::|e02befColdGen| BOOT::|e02ajfSolve|
            BOOT::|e02ddfColdGen| BOOT::|numMapArgs|
            BOOT::|e02befSolve| BOOT::|e02dcfSolve|
            BOOT::|e02ddfWarmGen| BOOT::|e02adfSolve|
            BOOT::|e02aefSolve| BOOT::|e02ddfSolve| BOOT::|e02bafSolve|
            BOOT::|e02bcfSolve| BOOT::|e02ahfGen| BOOT::|e02gafSolve|
            BOOT::|e02bbfGen| BOOT::|e02adfGen| BOOT::|e02defGen|
            BOOT::|e02ahfSolve| BOOT::|e02bdfGen| BOOT::|e02akfGen|
            BOOT::|e02dafGen| BOOT::|e02bdfSolve| BOOT::|e02dffGen|
            BOOT::|e02akfSolve| BOOT::|asyJoinPart| BOOT::|printLine|
            BOOT::|sockSendWakeup| BOOT::|sockGetFloat|
            BOOT::|/tb| BOOT::|/ry| BOOT::|/rx|
            BOOT::|/cxd| BOOT::/FOOBAR BOOT::/CX BOOT::NEWNAMTRANS
            BOOT::|htMakeInputList| BOOT::SPAD-MODETRAN
            BOOT::|popSatOutput| BOOT::|subrname|
            BOOT::|protectedEVAL|
            BOOT::|setOutputTex| BOOT::|setOutputFortran| BOOT::|set|
            BOOT::|setLinkerArgs| BOOT::|protectSymbols|
            BOOT::|protectedSymbolsWarning| BOOT::|setStreamsCalculate|
            BOOT::|setOutputFormula| BOOT::|setNagHost|
            BOOT::|setFunctionsCache| BOOT::|spadType| BOOT::|spadSys|
            BOOT::|mkGrepFile| BOOT::|mkGrepPattern1,addOptions|
            BOOT::|mkGrepPattern1,remUnderscores|
            BOOT::|mkUpDownPattern| BOOT::|mkUpDownPattern,fixchar|
            BOOT::|cSearch| BOOT::|verbatimize|
            BOOT::|pmParseFromString,flatten|
            BOOT::|htCommandToInputLine| BOOT::|detailedSearch|
            BOOT::|docSearch| BOOT::|form2HtString,fnTailTail|
            BOOT::|form2HtString,fn| BOOT::|sexpr2HtString|
            BOOT::|kInvalidTypePage| BOOT::|args2LispString,fnTailTail|
            BOOT::|sexpr2LispString,fn| BOOT::|args2LispString|
            BOOT::|sexpr2LispString| BOOT::|sexpr2HtString,fn|
            BOOT::|spleI| BOOT::|dbComments| BOOT::|sockGetInt|
            BOOT::|parseAndEvalStr| BOOT::|parseAndEvalStr1|
            BOOT::|d01gafSolve| BOOT::|d01apfGen| BOOT::|d01fcfSolve|
            BOOT::|d01asfGen| BOOT::|d02bbfSolve| BOOT::|d02rafGen|
            BOOT::|d02kefGen| BOOT::|d02kefSolve| BOOT::|d02ejfGen|
            BOOT::|d02gbfSolve| BOOT::|d02bbfGen| BOOT::|d02bhfGen|
            BOOT::|d02rafSolve| BOOT::|d02ejfSolve| BOOT::|d02bhfSolve|
            BOOT::|d02gafGen| BOOT::|d02gbfGen| BOOT::|d02gafSolve|
            BOOT::|d02cjfGen| BOOT::|d02cjfSolve| BOOT::|d03edfControl|
            BOOT::|d03edfSolve| BOOT::|d03eefSolve|
            BOOT::|d03edfLongGen| BOOT::|d03eefGen|
            BOOT::|d03edfShortGen| BOOT::|e01sefSolve|
            BOOT::|lnFileName| BOOT::|e01bgfSolve| BOOT::|e01safGen|
            BOOT::|e01bffGen| BOOT::|e01bafSolve|
            BOOT::|pfGlobalLinePosn| BOOT::|quoteString|
            BOOT::|postTran| BOOT::|decodeScripts| BOOT::|htGloss|
            BOOT::|htTutorialSearch| BOOT::|postInSeq|
            BOOT::|htTextSearch| BOOT::|htGreekSearch|
            BOOT::|postMakeCons| BOOT::|postCategory,fn|
            BOOT::|htShowFunctionPageContinued| BOOT::|htCacheSet|
            BOOT::|htSetFunCommand| BOOT::|listOfStrings2String|
            BOOT::|htCacheOne| BOOT::|htShowSetTree|
            BOOT::|htShowSetTreeValue| BOOT::|postBigFloat|
            BOOT::|htSetInteger| BOOT::|chkRange| BOOT::|postConstruct|
            BOOT::|postSlash| BOOT::|htCacheAddChoice|
            BOOT::|startHTPage| BOOT::|htSetLinkerArgs|
            BOOT::|htSetOutputCharacters| BOOT::|htSetKernelWarn|
            BOOT::|htSetKernelProtect| BOOT::|htSetExpose|
            BOOT::|htSetInputLibrary| BOOT::|htSetOutputLibrary|
            BOOT::|htSetHistory| SPAD-SAVE BOOT:|OsEnvGet|
            BOOT:|LispCompile| BOOT:|LispCompileFile|
            BOOT::|condErrorMsg| BOOT:|LispLoadFile|
            BOOT:|LispLoadFileQuietly| BOOT::MONITOR-RESTORE
            BOOT::|brightPrintCenterAsTeX| BOOT::|brightPrint0|
            BOOT::|sayWidth,fn| BOOT::|brightPrintCenter|
            BOOT::|clearClam| BOOT::|brightPrintHighlightAsTeX|
            BOOT::|brightPrintHighlight| BOOT::|sayDisplayWidth,fn|
            BOOT::|sayDisplayWidth| BOOT::INIT-LIB-FILE-GETTER
            BOOT::INIT-FILE-GETTER BOOT::|entryWidth| BOOT::FILE-RUNNER
            BOOT::|editFile| BOOT::|readForDoc| BOOT::|checkNumOfArgs|
            BOOT::OPENSERVER BOOT::|removeBackslashes|
            BOOT::|checkAddBackSlashes| BOOT::/RF-1 BOOT::|docreport|
            BOOT::|ExecuteInterpSystemCommand| BOOT::|pfFileName|
            BOOT::|InterpExecuteSpadSystemCommand| BOOT::|alistSize|
            BOOT::|parseTranList| BOOT::|parseOr| BOOT::|parseIf|
            BOOT::|parseImplies| BOOT::|parseEquivalence|
            BOOT::|parseLhs| BOOT::|parseAnd| BOOT::|parseLeftArrow|
            BOOT::|parseUpArrow| BOOT::|parseNotEqual| BOOT::|parseNot|
            BOOT::|parseDollarNotEqual| BOOT::|parseDollarGreaterEqual|
            BOOT::|parseDollarLessEqual| BOOT::|parseGreaterEqual|
            BOOT::|parseLessEqual| BOOT::|scriptTranRow1|
            BOOT::|scriptTran| BOOT::|scriptTranRow|
            BOOT::|parseExclusiveOr| BOOT::QUOTE-IF-STRING
            BOOT::|dbConformGenUnder| BOOT::|listOfEntries|
            BOOT::|conformString| BOOT::|dbConformGen|
            BOOT::|evalableConstructor2HtString| BOOT::|halfWordSize|
            BOOT::|fortFormatCharacterTypes,mkCharName|
            BOOT::|opPageFast|
            BOOT::|fortFormatCharacterTypes,par2string| VMLISP::MAKEDIR
            VMLISP::DELETE-DIRECTORY VMLISP::GET-IO-INDEX-STREAM
            VMLISP::GET-INPUT-INDEX-STREAM VMLISP::DIRECTORY?
            BOOT::|c05pbfGen| BOOT::|c05nbfGen| BOOT::|c05pbfSolve|
            BOOT::|c05nbfSolve| BOOT::|e02dafSolve| BOOT::|c06ebfGen|
            BOOT::|c06ebfSolve| BOOT::|c06gsfGen| BOOT::|c06gsfSolve|
            BOOT::|c06ekfSolve| BOOT::|c06eafSolve| BOOT::|c06gqfGen|
            BOOT::|c06ecfGen| BOOT::|c06fpfGen| BOOT::|c06frfSolve|
            BOOT::|c06gbfSolve| BOOT::|c06fqfGen| BOOT::|c06gqfSolve|
            BOOT::|c06eafGen| BOOT::|c06gcfGen| BOOT::|c06gcfSolve|
            BOOT::|c06gbfGen| BOOT::|c06fufGen| BOOT::|s01eafGen|
            BOOT::|s21bafGen| BOOT::|c06fpfSolve| BOOT::|s17dcfGen|
            BOOT::|c06fqfSolve| BOOT::|s18defGen| BOOT::|c06frfGen|
            BOOT::|s14bafGen| BOOT::|s18dcfGen| BOOT::|s17dhfGen|
            BOOT::|c06ecfSolve| BOOT::|s21bdfGen| BOOT::|c06fufSolve|
            BOOT::|c06ekfGen| BOOT::|s21bcfGen| BOOT::|sGen|
            BOOT::|s17dgfGen| BOOT::|d01anfGen| BOOT::|d01ajfGen|
            BOOT::|d01aqfGen| BOOT::|d01gafGen| BOOT::|d01bbfGen|
            BOOT::|s21bbfGen| BOOT::|d01amfGen| BOOT::|s17dlfGen|
            BOOT::|d01alfGen| BOOT::|d01fcfGen| BOOT::|d01akfGen|
            BOOT::|d01gbfGen| BOOT::|d01gbfSolve| VMLISP::|npPC|
            VMLISP::|npPP| BOOT::|exp2FortOptimizeArray|
            BOOT::|fortError1| BOOT::|fortPre1| BOOT::|spadcall1|
            BOOT::|fortPreRoot| BOOT::|checkPrecision|
            BOOT::|fix2FortranFloat| BOOT::|normalizeStatAndStringify|
            BOOT::|mkParameterList,par2string| BOOT::|f02wefSolve|
            BOOT::|f02ajfGen| BOOT::|printAny| BOOT::|f02adfGen|
            BOOT::|e02dffSolve| BOOT::|printString| BOOT::|f04jgfGen|
            BOOT::|f04qafGen| BOOT::|f04asfGen| BOOT::|summary|
            BOOT::|show| BOOT::|showSpad2Cmd| BOOT::|f04qafSolve|
            BOOT::|f04mbfGen| BOOT::|f04fafGen| BOOT::|f04arfGen|
            BOOT::|f04adfSolve| BOOT::|fixObjectForPrinting|
            BOOT::|savesystem| BOOT::|escapeSpecialChars|
            BOOT::|f04mcfSolve| BOOT::|encodeItem| BOOT::|f04atfGen|
            BOOT::|form2LispString| BOOT::|f04adfGen|
            BOOT::|concatWithBlanks| BOOT::|withAsharpCmd|
            BOOT::|f04jgfSolve| BOOT::|extendLocalLibdb|
            BOOT::|deleteFile| BOOT::|compileAsharpCmd1|
            BOOT::|f04mcfGen| BOOT::|f04arfSolve| BOOT::|frame|
            BOOT::|frameSpad2Cmd| BOOT::|addNewInterpreterFrame|
            BOOT::|getEnv| BOOT::|f04asfSolve| BOOT::|f04fafSolve|
            BOOT::|f04mbfSolve| BOOT::|f04atfSolve| BOOT::|f07fdfSolve|
            BOOT::|obey| BOOT::|f07aefGen| BOOT::|buildLibdbString|
            BOOT::|f07aefSolve| BOOT::|f07fefGen| BOOT::|f07adfSolve|
            BOOT::|f07adfGen| BOOT::|dbReadComments|
            BOOT::|f07fefSolve| BOOT::|f07fdfGen| BOOT::|s17defGen|
            BOOT::|f01qdfSolve| BOOT::|f01rcfSolve| BOOT::|f01mafGen|
            BOOT::|f01rdfGen| BOOT::|f01mafSolve| BOOT::|f01brfGen|
            BOOT::|f01mcfGen| BOOT::|f02axfGen| BOOT::|f02aefSolve|
            BOOT::|f02akfGen| BOOT::|f02abfSolve| BOOT::|f02bjfGen|
            BOOT::|bcErrorPage| BOOT::|f02xefGen| BOOT::|form2String|
            BOOT::|f02aafSolve| BOOT::|dbSourceFile|
            BOOT::MAKE-REASONABLE BOOT::|f02ajfSolve|
            BOOT::|f02axfSolve| BOOT::|f02affSolve| BOOT::|downlink|
            BOOT::BRIGHTPRINT-0 BOOT::|f02wefGen|
            BOOT::|conform2String| BOOT::|f02akfSolve|
            BOOT::|f02adfSolve| BOOT::|f02aafGen|
            BOOT::|dbSpecialExports| BOOT::|f02agfGen|
            BOOT::|f02bjfSolve| BOOT::|buildLibdbConEntry|
            BOOT::|f02agfSolve| BOOT::|dbSpecialDescription|
            BOOT::|f02xefSolve| BOOT::|f02abfGen| BOOT::|f02bbfGen|
            BOOT::|mkButtonBox| BOOT::|f02awfSolve|
            BOOT::|assignSlotToPred| BOOT::|f02bbfSolve|
            BOOT::|f02aefGen| BOOT::|f02awfGen| BOOT::|f02affGen|
            BOOT::|dbMkEvalable| BOOT::|mkEvalable|
            BOOT::|conPageChoose| BOOT::KILL-TRAILING-BLANKS
            BOOT::|ySearch| BOOT::|aSearch| BOOT::|close|
            BOOT::|kSearch| BOOT::|compileBoot| BOOT::|aokSearch|
            BOOT::|showNamedConstruct|
            BOOT::|reportOpsFromUnitDirectly1| BOOT::|oSearch|
            BOOT::|tabsToBlanks| BOOT::|underscoreDollars|
            BOOT::|mkGrepTextfile| BOOT::|reportOpsFromUnitDirectly0|
            BOOT::|replaceGrepStar| BOOT::|grepSource| BOOT::|xSearch|
            BOOT::|pSearch| BOOT::|dSearch| BOOT::|doSystemCommand|
            BOOT::|standardizeSignature| BOOT::|conPageFastPath|
            BOOT::|conPageConEntry| BOOT::|quickForm2HtString|
            BOOT::|dbAttr| BOOT::|e02ajfGen| BOOT::|pluralize|
            BOOT::|parseTran| BOOT::|e02defSolve|
            BOOT::|dbSpecialOperations| BOOT::|issueHTStandard|
            BOOT::|justifyMyType| BOOT::|getCallBackFn|
            BOOT::|bcDifferentiateGen| BOOT::|bcIndefiniteIntegrateGen|
            BOOT::|htMakeErrorPage| BOOT::|issueHT|
            BOOT::|setOutputAlgebra| BOOT::|bcDraw2DparGen|
            BOOT::|ExecuteSpadSystemCommand| BOOT::|bcDraw3Dpar1Gen|
            BOOT::|bcProductGen| BOOT::|ts| BOOT::|bcRealLimitGen|
            BOOT::|e02zafGen| BOOT::|bcSumGen| BOOT::|bcDraw3DparGen|
            BOOT::|bcDraw3DfunGen| BOOT::|aggwidth| BOOT::WIDTH
            BOOT::|bcDefiniteIntegrateGen| BOOT::|bcSeriesGen|
            BOOT::|subspan| BOOT::|bcPuiseuxSeriesGen|
            BOOT::|bcLaurentSeriesGen| BOOT::|superspan|
            BOOT::|bcSeriesByFormulaGen| BOOT::|bcNotReady|
            BOOT::|bcDraw2DfunGen| BOOT::|bcTaylorSeriesGen|
            BOOT::|bcDraw2DSolveGen| BOOT::KCL-OS-ENV-GET
            BOOT::|bcComplexLimitGen| BOOT::|saturnPRINTEXP|
            BOOT::|bcSeriesExpansionGen| BOOT::COMPILE-BOOT-FILE
            BOOT::|bcCreateVariableString| BOOT::|bcGenEquations|
            BOOT::|vConcatSuper| BOOT::BOOT-LOAD
            BOOT::|bcSolveNumerically1| BOOT::|bcLinearSolveEqnsGen|
            BOOT::|bcMakeUnknowns| BOOT::|bcInputSolveInfo|
            BOOT::|bcInputEquationsEnd| BOOT::|bcSystemSolveEqns1|
            BOOT::|bcLinearSolveEqns1| BOOT::|bcVectorGen|
            BOOT::|printBasic| BOOT::|subSuper| BOOT::|tr|
            BOOT::|bcLinearSolveMatrix1| BOOT::|stringList2String|
            BOOT::|bcString2HyString2| BOOT::|bcwords2liststring,fn|
            BOOT::|linkGen| BOOT::|optCallEval| BOOT::|tokType|
            BOOT::|timedEvaluate| BOOT::|roundStat|
            BOOT::|bracketString| BOOT::|e02bcfGen| BOOT::|e02gafGen|
            BOOT::|e02bbfSolve| VMLISP:OBEY BOOT::|e04ycfSolve|
            BOOT::|e04nafSolve| BOOT::|e04dgfSolve| BOOT::|e04fdfGen|
            BOOT::|e04gcfGen| BOOT::|NRTevalDomain| BOOT::|e04fdfSolve|
            BOOT::|e04mbfSolve| BOOT::|e04nafGen| BOOT::|e04gcfSolve|
            BOOT::|e04ucfGen| BOOT::|e04jafGen| BOOT::|e04mbfGen|
            BOOT::|e04jafSolve| BOOT::|e04dgfGen| BOOT::|e04ycfGen|
            BOOT::|f01rdfSolve| BOOT::|f01mcfSolve| BOOT::|f01qdfGen|
            BOOT::|f01qcfGen| BOOT::|f01qefGen| BOOT::|f01rcfGen|
            BOOT::|f01refSolve| BOOT::|f01qefSolve| BOOT::|e02zafSolve|
            BOOT::|f01qcfSolve| BOOT::|f01refGen| BOOT::|f01brfSolve|
            BOOT::|poGlobalLinePosn| BOOT:|sayString|
            BOOT::|incHandleMessage| BOOT::|pred2English|
            BOOT::|prefix2String0| BOOT::|form2StringLocal|
            BOOT::|formatOpType| BOOT::|form2String1| BOOT::|ncTag|
            BOOT::|ncAlist| BOOT::|tuple2String,f|
            BOOT::|formatAttributeArg| BOOT::|formString|
            BOOT::|form2StringWithPrens| BOOT::|prefix2String|
            BOOT::|form2StringAsTeX| BOOT::|prefix2StringAsTeX|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (*) T) BOOT::|bcConform| BOOT:STREAM-EOF
            BOOT::|categoryParts| BOOT:IOCLEAR BOOT:SAY BOOT:MOAN
            BOOT::|centerNoHighlight| BOOT:CROAK BOOT::INTERRUPT
            BOOT::LISP-BREAK-FROM-AXIOM BOOT:META VMLISP:NILFN
            BOOT::MAKE-DATABASE BOOT::|defaultTargetFE| BOOT::/DUPDATE
            BOOT::/UPDATE BOOT::/MONITOR VMLISP:$FILEP VMLISP:CALLBELOW
            BOOT::|systemError| BOOT::|listSort|
            BOOT::|asCategoryParts| BOOT::RDEFOUTSTREAM
            BOOT::RDEFINSTREAM VMLISP::SETQERROR BOOT::|throwMessage|
            BOOT::TOPLEVEL BOOT::|getDomainSigs|
            BOOT::|getInheritanceByDoc| BOOT::|showImp|
            BOOT::|showFrom| BOOT::|getDomainDocs| BOOT::|grepFile|
            BOOT::|printRecordFile| BOOT::|wasIs|
            BOOT::|htFile2RecordFile| BOOT::|inputFile2RecordFile|
            BOOT::|htFile2InputFile| BOOT::|bcComments|
            BOOT::|bcNameTable| BOOT::|dbSayItemsItalics|
            BOOT::|htPred2English| BOOT::|interpret|
            BOOT::|Enumeration,LAM| VMLISP:VMREAD VMLISP:RKEYIDS
            BOOT::/RP BOOT::MONITOR-TESTED BOOT::MONITOR-RESET
            BOOT::MONITOR-DISABLE BOOT::MONITOR-ENABLE
            BOOT::|returnStLFromKey| BOOT::MAKE-MONITOR-DATA
            BOOT::|level| BOOT::LEVEL BOOT::|resolveTT|
            BOOT::|isLegitimateMode| BOOT::|hasFileProperty|
            BOOT::|coerceConvertMmSelection| BOOT::|canCoerce|
            BOOT::|selectMms1| BOOT::|canCoerceFrom| BOOT::MAKE-TOKEN
            BOOT::MAKE-LINE BOOT::|centerAndHighlight| BOOT::|getOpDoc|
            BOOT::MAKE-STACK BOOT::|firstNonBlankPosition|
            BOOT::MAKE-XDR-STREAM BOOT::INITROOT
            BOOT::|EnumerationCategory,LAM| BOOT::|Mapping|
            BOOT::|RecordCategory,LAM| BOOT::|Union|
            BOOT::|UnionCategory,LAM| BOOT::|displayCategoryTable|
            BOOT::MAKE-REDUCTION BOOT::READ-A-LINE BOOT::|dbPresentOps|
            BOOT::|buildBitTable| BOOT::|htBlank|
            BOOT::|dbMakeContrivedForm| BOOT::|dcSize| BOOT::|sum|
            BOOT::|args2HtString| BOOT::|dc| BOOT::|bcNameCountTable|
            VMLISP::MAKE-LIBSTREAM BOOT::|nextown1| BOOT::|next1|
            BOOT::|incAppend1| BOOT::|synonym| BOOT::|grepConstruct|
            VMLISP::LOTSOF BOOT::|htBeginMenu| BOOT::|bcCon|
            BOOT::|koOps| BOOT::|dbWriteLines| BOOT::|catsOf|
            BOOT::|getDomainOpTable| BOOT:|PlainError|
            BOOT:|PlainPrint| BOOT::|htInitPageNoScroll|
            BOOT:|ReadLispExpr| BOOT::|conSpecialString?|
            BOOT::|htSayStandard| BOOT:|StreamFlush| BOOT:|NewPathname|
            BOOT:|SessionPathname| BOOT::|domainsOf|
            BOOT::|dbPresentCons| READLINE BOOT:|StringConcat|
            BOOT::|htBcLinks| BOOT::|pluralSay|
            BOOT::|getConstructorExports| BOOT::|sublisFormal|
            BOOT::NEXT-META-LINE BOOT::|htLispLinks|
            BOOT::META-META-ERROR-HANDLER BOOT::|dbHeading|
            BOOT::NEXT-BOOT-LINE BOOT::|concat| BOOT::SPAD_SYNTAX_ERROR
            BOOT::BOOT BOOT::|htQuery| BOOT::SPAD
            BOOT::|htSayIndentRel| BOOT::|bcConPredTable|
            BOOT::|htSaySaturn| BOOT::|dbSayItems| BOOT::|simpHasPred|
            BOOT::|start| BOOT::|protectedPrompt|
            BOOT::|htpMakeEmptyPage| BOOT::|htMakeButton|
            BOOT::|htSayIfStandard| BOOT::|htSay| BOOT::|incZip1|
            BOOT::|incIgen1| BOOT::|incRgen1|
            BOOT::|runOldAxiomFunctor| BOOT:|fillerSpaces|
            BOOT::|incLude1| FOAM::MAKE-FOAMPROGINFOSTRUCT
            BOOT::|bcPred| BOOT::|sayNewLine|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T) CHARACTER) VMLISP:EBCDIC VMLISP:NUM2CHAR
            BOOT::LINE-CURRENT-CHAR)) 
(PROCLAIM '(FTYPE (FUNCTION (T T *) FIXNUM) BOOT::LINE-NEW-LINE)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T) FIXNUM) BOOT::|rwrite128|))
(PROCLAIM
    '(FTYPE (FUNCTION (T) STRING) BOOT::|stripSpaces| BOOT::LINE-BUFFER
            BOOT::DROPTRAILINGBLANKS)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T) T) BOOT::|form2FenceQuoteTail|
            BOOT::|combineMapParts| BOOT::|form2FenceQuote|
            BOOT::|mkMapPred| BOOT::|formatOpConstant|
            BOOT::|formJoin2| BOOT::|axOpTran| BOOT::|axFormatOpList|
            BOOT::|axFormatOp| BOOT::|optcomma|
            BOOT::|displayTranModemap|
            BOOT::|makeInternalMapMinivectorName|
            BOOT::|cleanUpSegmentedMsg| BOOT::|makeDefaultDef|
            BOOT::|getDefaultingOps| BOOT::|getOpSegment|
            BOOT::|removeIsDomainD| BOOT::|formatSignatureAsTeX|
            BOOT::|axFormatType| BOOT::|sayRemoveFunctionOrValue|
            BOOT::|pvarCondList| BOOT::|makeTypeSequence|
            BOOT::|makeArgumentIntoNumber| BOOT::|axFormatAttrib|
            BOOT::|categoryForm?| BOOT::|axFormatCondOp| BOOT:OPTIONAL
            BOOT::|axFormatPred| BOOT::|fileConstructors|
            BOOT::SOURCEPATH BOOT::|untraceMapSubNames| BOOT:LASTELEM
            BOOT::|mapPredTran| BOOT::|makeDefaultArgs|
            BOOT::|stripType| BOOT::|dqUnitCopy| BOOT::|mkAliasList|
            BOOT::|dqUnit| BOOT::|modemapToAx|
            BOOT::|isDefaultPackageName| BOOT::|getEqualSublis|
            BOOT::|myWritable?| BOOT::|getInfovec| BOOT::|predTran|
            BOOT::|fnameReadable?| BOOT::|hasDefaultPackage|
            BOOT::|compFailure| BOOT::|fnameType|
            BOOT::|setExtendedDomains|
            BOOT::|simplifyMapConstructorRefs| BOOT::|fnameName|
            BOOT::|StringToDir|
            BOOT::|spad2AxTranslatorAutoloadOnceTrigger|
            BOOT::|fnameDirectory|
            BOOT::|simplifyMapPattern,unTrivialize| BOOT::|DirToString|
            BOOT::|isPatternArgument| BOOT::|htQuote|
            BOOT::|isConstantArgument| BOOT::|frameName|
            BOOT::|objValUnwrap| BOOT::|htMakePage|
            BOOT::|PARSE-LedPart| BOOT::|htpPropertyList|
            BOOT::|analyzeMap,f| BOOT::|PARSE-NudPart|
            BOOT::|PARSE-Expr| BOOT::|bcHt| BOOT::|getIteratorIds|
            BOOT::|getUserIdentifiersInIterators|
            BOOT::|htpInputAreaAlist| BOOT::|getUserIdentifiersIn|
            BOOT::|PARSE-GliphTok| BOOT::|kePageOpAlist|
            BOOT::|fileNameStrings| BOOT::|inclmsgCannotRead|
            BOOT::MAKE-SYMBOL-OF BOOT:MATCH-ADVANCE-STRING
            BOOT::|removeUndoLines| BOOT::STACK-SIZE BOOT:NOTE
            BOOT::|histFileErase| BOOT::|histInputFileName|
            BOOT::STACK-STORE BOOT::|readHiFi| BOOT::|restoreHistory|
            BOOT::STACK-UPDATED BOOT::|clearSpad2Cmd| BOOT::|getToken|
            BOOT::|makeHistFileName| BOOT::|changeHistListLen|
            BOOT::|showHistory| BOOT::|setIOindex| BOOT::|saveHistory|
            BOOT::|PARSE-NBGliphTok| BOOT::|dewritify,dewritifyInner|
            BOOT::|setHistoryCore| BOOT::|charDigitVal|
            BOOT::|dewritify,is?| BOOT::|writify| BOOT::|history|
            BOOT::|gensymInt| BOOT::|dewritify| BOOT::TOKEN-NONBLANK
            BOOT::|undoFromFile| BOOT::FLOATEXPID
            BOOT::|e02dffSolve,fy| BOOT::|spadClosure?|
            BOOT::|bustUnion| BOOT::|writify,writifyInner|
            BOOT::|undoChanges| BOOT::|undoInCore| BOOT::|getSlot1|
            BOOT::|writifyComplain| BOOT::|unwritable?|
            BOOT::|dbSpecialDisplayOpChar?| BOOT::|removeAttributes|
            BOOT:|pathname| BOOT::|isLeaf| BOOT::|srcPosDisplay|
            BOOT::|srcPosColumn| BOOT::|transformOperationAlist|
            BOOT::|srcPosSource| BOOT::|sayNonUnique|
            BOOT::|compDefWhereClause,removeSuchthat|
            BOOT::|srcPosLine| BOOT::|compTuple2Record|
            BOOT::|srcPosFile| BOOT::|mkAtreeValueOf1| BOOT::|center80|
            BOOT::|loadFunctor|
            BOOT::|compDefWhereClause,transformType|
            BOOT::|mkCategoryPackage,gn|
            BOOT::|updateCategoryFrameForConstructor| BOOT:|sayFORMULA|
            BOOT::|convertOpAlist2compilerInfo|
            BOOT::|getCategoryOpsAndAtts| BOOT::|lispize|
            BOOT::|getSrcPos| BOOT::|mustInstantiate|
            BOOT::|isSystemDirectory| BOOT:ASSOCRIGHT BOOT::|getFlag|
            BOOT::|getMsgToWhere| BOOT::|mkExplicitCategoryFunction,fn|
            BOOT::|updateCategoryFrameForCategory| BOOT:CURSTRMLINE
            BOOT::|alreadyOpened?| BOOT::|msgImPr?| BOOT::|Operators|
            BOOT::|mkAtree1| BOOT::|getLineText| BOOT::|pfSourceText|
            BOOT::|toFile?| BOOT::|getMsgArgL| BOOT::|poGetLineObject|
            BOOT:BRIGHTPRINT BOOT::|getLinePos|
            BOOT::|loadIfNecessaryAndExists| BOOT::|lnPlaceOfOrigin|
            BOOT::|makeLeaderMsg| BOOT::|putInLocalDomainReferences|
            BOOT::|pfPosOrNopos| BOOT::|killNestedInstantiations|
            BOOT::|NRTputInTail| BOOT::|quotifyCategoryArgument|
            BOOT::|getLisplibVersion| BOOT::|getMsgPrefix|
            BOOT::|unInstantiate| BOOT::|asTupleAsVector|
            BOOT::|lisplibDoRename| BOOT::|asTupleSize|
            BOOT::|finalizeLisplib| BOOT::|disallowNilAttribute|
            BOOT::|asTupleNewCode0| BOOT::|processKeyedError|
            BOOT::|toScreen?| BOOT::|compileConstructor1|
            BOOT::|compileDocumentation| BOOT::|transformREPEAT|
            BOOT::|line?| BOOT::|readLibPathFast|
            BOOT::|modemap2Signature| BOOT::|transformCollect|
            BOOT::|msgLeader?| BOOT::|compileConstructor|
            BOOT::|initToWhere| BOOT::|initImPr|
            BOOT::|putDatabaseStuff| BOOT::|e02defSolve,fxy|
            BOOT::|getMsgPosTagOb| BOOT::|pfIdSymbol|
            BOOT::|mkAtreeExpandMacros| BOOT::|getMsgPos|
            BOOT::|macApplication| BOOT::|isInterpMacro|
            BOOT::|getMsgFTTag?| BOOT::|leader?|
            BOOT::|pf0ApplicationArgs| BOOT::|atree2EvaluatedTree|
            BOOT::|remFile| BOOT::|pfMLambda?| BOOT::|whichCat|
            BOOT::|pfApplicationOp| BOOT::|removeBindingI|
            BOOT::|addArgumentConditions,fn| BOOT::|macId|
            BOOT:STRMBLANKLINE BOOT::|getUnname1| BOOT:STRMSKIPTOBLANK
            BOOT::|remLine| BOOT::|pfSourcePosition|
            BOOT::|spadCompileOrSetq| BOOT::|getMsgKey?|
            BOOT::|mac0Get| BOOT::|getMsgKey| BOOT::|compile|
            BOOT::|evaluateType| BOOT::|constructMacro|
            BOOT::|poPosImmediate?| BOOT::|pfMLambdaBody|
            BOOT::|poNopos?| BOOT::|evaluateType1|
            BOOT::|pf0MLambdaArgs| BOOT:NEXTSTRMLINE
            BOOT::|evaluateSignature| BOOT::|macMacro|
            BOOT::|poLinePosn| BOOT::|failCheck| BOOT::|pfNothing?|
            BOOT::|compile,isLocalFunction| BOOT::|macSubstituteOuter|
            BOOT::|erMsgSep| BOOT::|pfMacroRhs| BOOT::|mkConstructor|
            BOOT::|showMsgPos?| BOOT::|pfMacroLhs| BOOT::|macExpand|
            BOOT:IS_GENVAR BOOT::|mkEvalableMapping| BOOT::|macLambda|
            BOOT::|getMsgInfoFromKey| BOOT::|evaluateType0|
            BOOT::|getStFromMsg| BOOT::|getUnnameIfCan|
            BOOT::|macWhere| BOOT::|tabbing| BOOT::|getMsgLitSym|
            BOOT::|pfApplication?| BOOT::|getPosStL| BOOT::|pfMacro?|
            BOOT::|doItIf,localExtras| BOOT::|getMsgText|
            BOOT::|mkEvalableUnion| BOOT::|pfLambda?|
            BOOT::|getMsgPrefix?| BOOT::|mkEvalableRecord|
            BOOT::|pfWhere?| BOOT::|getPreStL| BOOT::|makeOrdinal|
            BOOT::|mac0GetName| BOOT::|getAndEvalConstructorArgument|
            BOOT::|msgOutputter| BOOT::|pfLeaf?|
            BOOT::|mkEvalableCategoryForm| BOOT::|getMsgTag?|
            BOOT::|devaluateDeeply| BOOT::|pfLeafPosition|
            BOOT::|compDefineFunctor1,FindRep| BOOT::|pfAbSynOp|
            BOOT::|listOutputter| BOOT::|pfTypedId|
            BOOT::|processChPosesForOneLine| BOOT::|pf0LambdaArgs|
            BOOT::|e02dffSolve,fx| BOOT::|getModeSetUseSubdomain|
            BOOT::MKQSADD1 BOOT::|getModeSet| BOOT::|poCharPosn|
            BOOT::|posPointers| BOOT::|NRTgenInitialAttributeAlist|
            BOOT::|makeMsgFromLine| BOOT::THETA_ERROR
            BOOT::|mkRationalFunction| BOOT::MACROEXPANDALL
            BOOT::|isCategoryPackageName| BOOT::|erMsgSort|
            BOOT::|isAVariableType| BOOT::|msgNoRep?|
            BOOT::|getPrincipalView| BOOT::|To| BOOT::|hitListOfTarget|
            BOOT::SUBANQ BOOT::|From| BOOT::|domainDepth|
            BOOT::|NRTgetLocalIndexClear| BOOT::|constructSubst|
            BOOT::|containsVars| BOOT::|evalMmDom|
            BOOT::|abbreviationsSpad2Cmd|
            BOOT::|formatUnabbreviatedSig| BOOT::|optFunctorBody|
            BOOT::|optimize| BOOT::|emptyAtree| BOOT::|templateParts|
            BOOT::|dqToList| BOOT::|dqConcat| BOOT::|isHomogeneousList|
            BOOT::|isUncompiledMap| BOOT::|printMms|
            BOOT::|getSymbolType| BOOT::/UNTRACE-REDUCE
            BOOT::|matchMmCond| BOOT::|object2Identifier|
            BOOT::|selectMostGeneralMm| BOOT::|fixUpTypeArgs|
            BOOT::|handleLispBreakLoop| BOOT::TRACEOPTIONS BOOT:REMDUP
            BOOT::|evalMmStack| BOOT::SHOWBIND BOOT::DROPENV
            BOOT::UNVEC BOOT::|noSharpCallsHere|
            BOOT::|untraceDomainConstructor| BOOT:CURMAXINDEX
            BOOT::|isDomain| BOOT::|getFunctionSourceFile|
            BOOT::|isMap| BOOT::HACKFORIS1 BOOT::HACKFORIS
            BOOT::|containsVars1| BOOT::|orderMmCatStack|
            BOOT::|evalMmStackInner| BOOT::DEF-IN2ON
            BOOT::|new2OldTran| BOOT::|resolveTypeList|
            BOOT::|newConstruct| BOOT::|newIf2Cond| BOOT::|newDef2Def|
            BOOT::|asTupleNew0| BOOT::DEF-MESSAGE1 BOOT::LIST2STRING1
            BOOT::DEF-WHERE BOOT::DEF-SEQ BOOT::SEQOPT BOOT::DEF-IS
            BOOT::DEF-EQUAL BOOT::DEF-MESSAGE BOOT::DEF-CATEGORY
            BOOT::DEF-REPEAT BOOT::DEF-COND BOOT::DEF-LESSP
            BOOT::SMINT-ABLE BOOT::DEF-COLLECT BOOT::DEF-STRING
            BOOT::|Zeros| BOOT::DEF-SETELT BOOT::DEF-RENAME1
            BOOT::DEF-ELT BOOT::|DEF-:| BOOT::DEF-ADDLET
            BOOT::|quoteWidth| BOOT::DEF-INSERT_LET1 BOOT::|boxSuper|
            BOOT::DEF-WHERECLAUSE BOOT::DEF-STRINGTOQUOTE
            BOOT::|boxSub| BOOT::DEF-INSERT_LET BOOT::LIST2CONS-1
            BOOT::|bootTransform| BOOT::|concatWidth|
            BOOT::DEF-IS-REMDUP1 BOOT::|altSuperSubWidth|
            BOOT::|altSuperSubSuper| BOOT::|concatbWidth|
            BOOT::LIST2CONS BOOT::|altSuperSubSub| BOOT::DEF-IS-REMDUP
            BOOT::|concatSuper| BOOT::DEF-IS-EQLIST
            VMLISP:RECOMPILE-DIRECTORY BOOT::|concatSub|
            BOOT::|new2OldDefForm| BOOT::|binomWidth|
            BOOT::|binomSuper| BOOT::DEF-SELECT BOOT::|binomSub|
            BOOT::COMP-TRAN-1 BOOT::PUSHLOCVAR BOOT::COMP-EXPAND
            BOOT::|canCacheLocalDomain,domargsglobal| VMLISP:MAKE-CVEC
            BOOT::|inSuper| BOOT::COMP-NEWNAM BOOT::COMP-TRAN
            BOOT::|inSub| BOOT::COMP-FLUIDIZE BOOT::|addInputLibrary|
            BOOT::|inWidth| BOOT::|dropInputLibrary|
            BOOT::|openOutputLibrary| BOOT::|moveORsOutside|
            BOOT::|stepSuper| BOOT::|outputTranMatrix|
            BOOT::|fracwidth| BOOT::|stepSub| BOOT::|compQuietly|
            BOOT::|listOfPatternIds| BOOT::|fracsuper| BOOT::COMP-1
            BOOT::|getOplistForConstructorForm| BOOT::|stepWidth|
            BOOT::COMP-2 VMLISP:TRIMSTRING BOOT::|maprin0|
            BOOT::|compAndDefine| BOOT::|abbreviate| BOOT::|fracsub|
            BOOT::|exptSuper| BOOT::|mathPrintTran|
            BOOT::|COMP,FLUIDIZE| VMLISP:COMP370 BOOT::|exptWidth|
            BOOT::|rootWidth| BOOT::|with| BOOT::|exptNeedsPren|
            BOOT::|minusWidth| VMLISP:|log| BOOT::|maprin|
            BOOT::|loadDependents| BOOT::|concatTrouble,fixUp|
            BOOT::|loadIfNecessary| VMLISP:MBPIP BOOT::|timesWidth|
            BOOT::|rootSuper| BOOT::|interactiveModemapForm,fn|
            BOOT::|largeMatrixAlist| VMLISP:QSORT BOOT::|sumWidth|
            VMLISP:PLACEP BOOT::LOG10 BOOT::|aggWidth| BOOT::|zagWidth|
            BOOT::|pi2Width| BOOT::|LZeros|
            BOOT::|e02zafSolve,fmu| BOOT::|signatureTran|
            BOOT::|destructT| BOOT::|userError| BOOT::|clearAllSlams|
            BOOT::|displayComp| VMLISP:HKEYS BOOT::|mkErrorExpr|
            BOOT::|pi2Sup| BOOT::|compOrCroak1,compactify|
            BOOT::|pi2Sub| BOOT::|convertSpadToAsFile|
            BOOT::|overbarSuper| BOOT::|outputOp| BOOT::|compiler|
            BOOT::|resolveTMRed1| BOOT::|resolveTTRed3|
            BOOT::|fnameWritable?| BOOT::MONITOR-EVALBEFORE
            VMLISP:UPCASE BOOT::|interpOp?| BOOT::|pathnameName|
            BOOT::|pathnameDirectory| BOOT::SPADSYSNAMEP VMLISP:STATEP
            BOOT::|compileSpad2Cmd| BOOT::MONITOR-BLANKS
            BOOT::|piWidth| BOOT::|newType?| BOOT::WHOCALLED
            BOOT::|charyTopWidth| VMLISP:FBPIP BOOT::|bubbleType|
            BOOT::|putWidth| BOOT::|piSup| BOOT::OPTIONS2UC
            BOOT::|overlabelSuper| BOOT::|pathnameType|
            BOOT::|spadThrowBrightly| BOOT::/OPTIONS BOOT::|piSub|
            BOOT::/UNEMBED-Q BOOT::/UNEMBED-1
            BOOT::|typeIsASmallInteger| BOOT::|indefIntegralWidth|
            BOOT::|indefIntegralSup| BOOT::|isSimple| VMLISP:UNEMBED
            BOOT::|indefIntegralSub| BOOT::|primitiveType|
            BOOT::|mkAtree| BOOT::/UNTRACELET-2
            BOOT::|outputTranIterate| BOOT::|errorRef|
            VMLISP:RE-ENABLE-INT BOOT::/UNTRACELET-1 BOOT::|intWidth|
            BOOT::|NRTgetLocalIndex| BOOT::|getOutputAbbreviatedForm|
            BOOT::|isFluid| VMLISP:IVECP BOOT::|iterVarPos|
            BOOT::|remWidth| VMLISP:LIST2VEC BOOT::|matWidth|
            BOOT::|asTupleAsList| BOOT::|outputTranIteration|
            VMLISP:LISTOFQUOTES BOOT::|upcase| BOOT::|intSup|
            BOOT::|reassembleTowerIntoType| BOOT::|upor|
            BOOT::|matSuper| BOOT::|hasFormalMapVariable,hasone?|
            BOOT::|intSub| VMLISP:IS-CONSOLE BOOT::|coerceUnion2Branch|
            BOOT::|PushMatrix| BOOT::MKPROGN BOOT::|uncons|
            VMLISP:MAKE-ABSOLUTE-FILENAME
            BOOT::|retract2Specialization| BOOT::|sigma2Width|
            VMLISP:FUNARGP BOOT::|syminusp| BOOT::|NRTassocIndex|
            BOOT::|resolveTypeListAny| BOOT::MONITOR-PRINTREST
            BOOT::|extwidth| BOOT::|varsInPoly| BOOT::|sigma2Sup|
            BOOT::|stackWarning| BOOT::SMALL-ENOUGH BOOT::|extsuper|
            BOOT::|sigma2Sub| BOOT::|extsub| BOOT::|sigmaWidth|
            BOOT::/INITUPDATES BOOT::|sigmaSup| BOOT::IS_SHARP_VAR
            BOOT::|sigmaSub| BOOT::|retract1| BOOT::|qTWidth| VMLISP:LN
            BOOT::|decomposeTypeIntoTower| BOOT::|transcomparg|
            BOOT::FUNLOC BOOT::|stringWidth|
            BOOT::|mathprintWithNumber| BOOT::COND-UCASE
            VMLISP:PROPLIST BOOT::|texFormat| BOOT::|bubbleConstructor|
            BOOT::|isSubForRedundantMapName| BOOT::|isDomainOrPackage|
            BOOT::|dispfortexp| BOOT::|isInterpOnlyMap|
            BOOT::|formulaFormat| BOOT::|boxWidth| BOOT::|sayMath|
            BOOT::|domainZero| BOOT::|domainOne| VMLISP:COPY
            VMLISP:DOWNCASE BOOT::|e04ucfSolve,fg| VMLISP:SHUT
            BOOT::|unescapeStringsInForm|
            BOOT::|executeInterpreterCommand| VMLISP:REROOT
            BOOT::|parseAndInterpret| VMLISP:DIG2FIX
            BOOT::|ncSetCurrentLine| BOOT::|pvarsOfPattern|
            BOOT::|htEscapeString| BOOT::|e01safSolve,f|
            BOOT::|e04ucfSolve,fe| BOOT::|e01befSolve,f|
            BOOT::|e01bffSolve,g| VMLISP:LOG2 BOOT::|e01dafSolve,g|
            BOOT::|e01dafSolve,f| VMLISP:SIZE VMLISP:EOFP
            BOOT::|e01bffSolve,f| VMLISP:RSHUT BOOT::|e04ucfSolve,fd|
            BOOT::|e01bhfSolve,f| BOOT::|objVal| BOOT::|getValue|
            BOOT::|getMode| BOOT::|getUnname| VMLISP:DIGITP
            BOOT::|bottomUp| BOOT::|mkAtreeNode| VMLISP:VEC2LIST
            VMLISP:MAKE-VEC VMLISP:GCMSG BOOT::|retract|
            BOOT::|getUnionOrRecordTags| BOOT::|e02dcfColdSolve,h|
            BOOT::|e02ajfSolve,f| BOOT::|polyVarlist|
            BOOT::|e02befColdSolve,f| BOOT::|removeQuote|
            BOOT::|e02dcfColdSolve,g| BOOT::|e02dcfColdSolve,f|
            BOOT::|isMapExpr| BOOT::|getTarget|
            BOOT::|e02ddfColdSolve,f| BOOT::|isType|
            BOOT::|bottomUpElt| BOOT::|e02adfSolve,f|
            BOOT::|retractAtree| BOOT::|bottomUpPercent|
            BOOT::|fetchOutput| BOOT::|e02aefSolve,f|
            BOOT::|e02gafSolve,fb| BOOT::|bottomUpUseSubdomain|
            BOOT::|getBasicObject| BOOT::|bottomUpCompile|
            BOOT::|e02ddfSolve,h| BOOT::|e02ddfSolve,g|
            BOOT::|e02bafSolve,g| BOOT::|e02bcfSolve,f|
            BOOT::|getBasicMode| BOOT::|e02ddfSolve,f| BOOT::|unwrap|
            BOOT::|isWrapped| BOOT::|e02bafSolve,f| BOOT::GETZEROVEC
            BOOT::|containsPolynomial|
            BOOT::|getModeOrFirstModeSetIfThere| BOOT::|e02ahfSolve,f|
            BOOT::|e04ucfSolve,fc| BOOT::|wrapMapBodyWithCatch|
            BOOT::|e02agfSolve,i| BOOT::|e02agfSolve,h|
            BOOT::|e02bdfSolve,f| BOOT::|containsVariables|
            BOOT::|e02bbfSolve,f| BOOT::|wrapped2Quote|
            BOOT::|objCodeVal| BOOT::|objCodeMode|
            BOOT::|e02akfSolve,f| BOOT::|asyUnTuple|
            BOOT::|asyTypeUnitList| BOOT::|asyComma?|
            BOOT::|interactiveModemapForm| BOOT::|isTaggedUnion|
            BOOT::|asIsCategoryForm| BOOT::|opOf| BOOT::|e02agfSolve,g|
            BOOT::|asySubstMapping| BOOT::|e02agfSolve,f|
            BOOT::|asyTypeMapping| BOOT::|asyCATEGORY|
            BOOT::|e02dafSolve,fp| BOOT::|asyShorten|
            BOOT::|e02dafSolve,fmu| BOOT::|createAbbreviation|
            BOOT::|astran| BOOT::|asMakeAlist| BOOT::|asyParents|
            BOOT::|asyDocumentation| BOOT::|asyConstructorModemap|
            BOOT::|asytran| BOOT::|asyPredTran| BOOT::|asyPredTran1|
            BOOT::|as| BOOT::|asytranLiteral| BOOT::|asytranEnumItem|
            BOOT::|constructor?| BOOT::|hackToRemoveAnd|
            BOOT::|asyGetAbbrevFromComments| BOOT::|intern|
            BOOT::|asyTypeJoinPartPred| BOOT::|zeroOneConversion|
            BOOT::|asyArgs| BOOT::|asyArg| BOOT::|asyFindAttrs|
            BOOT::|asyAncestors| BOOT::|asyAncestorList|
            BOOT::|asyTypeJoinItem| BOOT::|isLowerCaseLetter|
            BOOT::|abbreviation?| BOOT::|asAll| BOOT::|error|
            BOOT::|asyTypeJoinPartIf| BOOT::|asyType|
            BOOT::|asyTypeJoin| BOOT::|asyTypeJoinPartExport|
            BOOT::|asyCattranOp| BOOT::|predicateBitRef|
            BOOT::|asyMkpred| BOOT::|asyLooksLikeCatForm?|
            BOOT::|asyCosigType| BOOT::|setVector12|
            BOOT::|asMakeAlistForFunction| BOOT::|optFunctorPROGN|
            BOOT::|getAttributesFromCATEGORY| BOOT::|worthlessCode|
            BOOT::|mySort| BOOT::|optFunctorBody,CondClause|
            BOOT::|mkDomainFormer| BOOT::|mkNiladics| BOOT::|optCall|
            BOOT::|explodeIfs| BOOT::|folks| BOOT::|mkVector|
            BOOT::|asyExtractDescription| BOOT::|asyCattran1|
            BOOT::|simpCattran| BOOT::|asyCattran| BOOT::|asyCatItem|
            BOOT::|asyExportAlist| BOOT::FOOBAR
            BOOT::|bootAbsorbSEQsAndPROGNs| BOOT::|displayDatabase|
            BOOT::|bootAbsorbSEQsAndPROGNs,flatten| BOOT::|bootTran|
            BOOT::|asyConstructorArg| BOOT::|bootLabelsForGO|
            BOOT::GP2COND BOOT::|bootPROGN| BOOT::|asyTypeMakePred|
            BOOT::|bootSEQ| BOOT::|tryToRemoveSEQ| BOOT::|nakedEXIT?|
            BOOT::|asyConstructorArgs| BOOT::|mergeCONDsWithEXITs|
            BOOT::STREAM2UC BOOT::|asyTypeJoinStack| BOOT::|bootCOND|
            BOOT::STRINGREST BOOT::|bootAND| BOOT::|boot2Lisp|
            BOOT::|bootOR| BOOT::|asyTypeJoinPartWith| BOOT::|bootIF|
            BOOT::|asyCosig| BOOT::|bootAND,flatten|
            BOOT::|bootPushEXITintoCONDclause| BOOT::|asyIsCatForm|
            BOOT::|bootOR,flatten| BOOT::|asCategoryParts,exportsOf|
            BOOT::|removeEXITFromCOND| BOOT::|flattenCOND| BOOT::/FLAG
            BOOT::|extractCONDClauses| BOOT::|hashable|
            BOOT::|trimString| BOOT::|mergeableCOND|
            BOOT::|knownEqualPred| BOOT::|removeEXITFromCOND?|
            BOOT::CPSAY BOOT::|zeroOneConvert| BOOT::/EDIT
            BOOT::|domainForm?| BOOT::|makeByteWordVec|
            BOOT::DECIMAL-LENGTH BOOT::|unabbrevAndLoad| BOOT::READLISP
            BOOT::|abbQuery| BOOT::SPAD-EVAL BOOT::/TRANSNBOOT
            BOOT::SPAD-MDTR-2 BOOT::SPAD-MDTR-1 BOOT::/TRANSPAD
            BOOT::|setAutoLoadProperty| 
            BOOT::|getConstructorUnabbreviation| BOOT::|getLisplibName|
            BOOT::OPTIMIZE&PRINT
            BOOT::|getPartialConstructorModemapSig| BOOT::UNCONS
            BOOT::|maximalSuperType| BOOT::|getImmediateSuperDomain|
            BOOT::|augmentLowerCaseConTable| BOOT::|isNameOfType|
            BOOT::|objMode| BOOT::|isDomainValuedVariable|
            BOOT::|packageForm?| BOOT::|sayMSG2File| BOOT::|concatList|
            BOOT::|mkMessage| BOOT::|clearCache| BOOT::|IdentityError|
            BOOT::/TRANSBOOT BOOT::|process| BOOT::|mathprint|
            BOOT::ISLOCALOP-1 BOOT::|pushSatOutput| BOOT::|fracpart|
            BOOT::|negintp| BOOT::|intpart| BOOT::|optRECORDELT|
            BOOT::|optIF2COND| BOOT::C-TO-R BOOT::C-TO-S BOOT::S-TO-C
            BOOT::CGAMMA BOOT::RGAMMA BOOT::CLNGAMMA BOOT::RLNGAMMA
            BOOT::|getDomainOps| BOOT::|showGoGet|
            BOOT::|showAttributes| BOOT::|showPredicates|
            BOOT::|showSummary| BOOT::|getExtensionsOfDomain|
            BOOT::|getDomainSeteltForm| BOOT::|getCategoriesOfDomain|
            BOOT::|getDomainExtensionsOfDomain| BOOT::|bnot|
            BOOT::|notDnf| BOOT::|b2dnf| BOOT::|ordList| BOOT::|bor|
            BOOT::|band| BOOT::|bassert| BOOT::|notCoaf| BOOT::|list3|
            BOOT::|list2| BOOT::|list1| BOOT::|dnf2pf| BOOT::|be|
            BOOT::|reduceDnf| BOOT::|bassertNot| BOOT::|prove|
            BOOT::|testPredList| BOOT::|nodeCount|
            BOOT::|mkCircularAlist| BOOT::|clearSlam,LAM|
            BOOT::|getCacheCount| BOOT::|clearLocalModemaps|
            BOOT::|hashCount| BOOT::|parseAndEvalToHypertex|
            BOOT::|oldParseAndInterpret| BOOT::|parseAndInterpToString|
            BOOT::|parseAndEvalToStringEqNum| BOOT::|setHistory|
            BOOT::|setExposeAddGroup| BOOT::|setFortDir|
            BOOT::|validateOutputDirectory| BOOT::|setOutputLibrary|
            BOOT::|setFortPers| BOOT::|setExposeDropConstr|
            BOOT::|setExposeDropGroup| BOOT::|setExposeDrop|
            BOOT::|setFortTmpDir| BOOT::|setExposeAdd|
            BOOT::|setExpose| BOOT::|setInputLibrary|
            BOOT::|setAsharpArgs| BOOT::|countCache| BOOT::|cgamma|
            BOOT::|rgamma| BOOT::|clngammacase3| BOOT::|cgammaBernsum|
            BOOT::|cgammaAdjust| BOOT::|lnrgammaRatapprox|
            BOOT::|phiRatapprox| BOOT::|lnrgamma|
            BOOT::|gammaRatapprox| BOOT::|gammaRatkernel|
            BOOT::|gammaStirling| BOOT::|PsiIntpart|
            BOOT::|isFilterDelimiter?|
            BOOT::|mkDetailedGrepPattern,simp| BOOT::|cgammat|
            BOOT::|isDefaultOpAtt| BOOT::|replaceTicksBySpaces|
            BOOT::COT BOOT::|conform2OutputForm| BOOT::|lncgamma|
            BOOT::|dbGetName| BOOT::|pfTupleList| BOOT::|pfWIfElse|
            BOOT::|pfWIfThen| BOOT::|mkGrepPattern1,addWilds|
            BOOT::|pfWIfCond| BOOT::|pfWIf?| BOOT::|mkGrepPattern1,g|
            BOOT::|organizeByName| BOOT::|pfAssignLhsItems|
            BOOT::|pfRetractToType| BOOT::|getTempPath| BOOT::|pfSexpr|
            BOOT::|looksLikeDomainForm| BOOT::|pfRetractToExpr|
            BOOT::|pfRetractTo?| BOOT::|pfExpression?|
            BOOT::|genSearchUniqueCount|
            BOOT::|pf0FlattenSyntacticTuple| BOOT::|pfSexpr,strip|
            BOOT::|pmPreparse| BOOT::|dbUnpatchLines|
            BOOT::|evaluateLines| BOOT::|verifyRecordFile|
            BOOT::|sayDocMessage| BOOT::|recordAndPrintTest,fn|
            BOOT::|pmParseFromString|
            BOOT::|conLowerCaseConTranTryHarder| BOOT::|fnameExists?|
            BOOT::|htTrimAtBackSlash| BOOT::|setExposeAddConstr|
            BOOT::|dbBasicConstructor?| BOOT::|lfnegcomment|
            BOOT::|lfcomment| BOOT::|bcStarConform| BOOT::|lfstring|
            BOOT::|bcStar| BOOT::|simpBool| BOOT::|scanKeyTr|
            BOOT::|extractHasArgs,find| BOOT::|lfkey|
            BOOT::|scanPossFloat| BOOT::|scanCloser?|
            BOOT::|bcStarSpace| BOOT::|keyword|
            BOOT::|loadLibIfNotLoaded| BOOT::|lineoftoks|
            BOOT::|lisp2HT| BOOT::|getCType| BOOT::|lisp2HT,fn|
            BOOT::|conform2HtString| BOOT::|nextline|
            BOOT::|unMkEvalable| BOOT::|int2Bool| BOOT::|keyword?|
            BOOT::|htSayList| BOOT::|scanW| BOOT::|isLoaded?|
            BOOT::|mkQuote| BOOT::|lfinteger| BOOT::|mkQuote,addQuote|
            BOOT::|functionAndJacobian| BOOT::|lferror|
            BOOT::|scanWord| BOOT::|scanTransform|
            BOOT::|htPred2English,fnAttr| BOOT::|dbConname|
            BOOT::|digit?| BOOT::|addSpaces| BOOT::|dbKindString|
            BOOT::|lfspaces| BOOT::|stripUnionTags| BOOT::|lfid|
            BOOT::|mkPredList| BOOT::|spad2lisp|
            BOOT::|orderUnionEntries| BOOT::|punctuation?|
            BOOT::|Record0| BOOT::|makeFort,untangle|
            BOOT::|makeFort,untangle2| BOOT::|makeOutputAsFortran|
            BOOT::|rdigit?| BOOT::|vec2Lists| BOOT::|npMoveTo|
            BOOT::|complexRows| BOOT::|makeLispList|
            BOOT::|pfSourceStok| BOOT::|vec2Lists1|
            BOOT::|multiToUnivariate| BOOT::|spadTypeTTT|
            BOOT::|makeUnion| BOOT::|stripNil|
            BOOT::|parseAndEvalToString|
            BOOT::|parseAndEvalToStringForHypertex| BOOT::|XDRFun|
            BOOT::|pair2list| BOOT::|pfStringConstString|
            BOOT::|pfExportDef| BOOT::|prefix2Infix|
            BOOT::|pfDefinitionSequenceArgs| BOOT::|lispType|
            BOOT::|pfComDefinitionDef| BOOT::|checkForBoolean|
            BOOT::|npTrapForm| BOOT::|pfTransformArg|
            BOOT::|vectorOfFunctions| BOOT::|pfTaggedToTyped1|
            BOOT::|pfFlattenApp| BOOT::|pfTaggedToTyped|
            BOOT::|pfCollectVariable1|
            BOOT::|InvestigateConditions,pessimise| BOOT::|pfCollect1?|
            BOOT::|d01gafSolve,f| BOOT::|pfComDefinitionDoc|
            BOOT::|PrepareConditional| BOOT::|pfLoopIterators|
            BOOT::|TryGDC| BOOT::|d01fcfSolve,f| BOOT::|compCategories|
            BOOT::|pfHidePart| BOOT::|makeMissingFunctionEntry,tran|
            BOOT::|PacPrint| BOOT::|keyItem| BOOT::|pfHide?|
            BOOT::|pfDocumentText| BOOT::|pfDocument?|
            BOOT::|e02dafSolve,fxy| BOOT::|pfLambdaArgs|
            BOOT::|ConstantCreator| BOOT::|pfDefinitionLhsItems|
            BOOT::|pf0WithWithin| BOOT::|d02bbfSolve,fb|
            BOOT::|pfWithWithin| BOOT::|d02bbfSolve,fa|
            BOOT::|pf0WithBase| BOOT::|d02gbfSolve,fe|
            BOOT::|pfWithBase| BOOT::|pfWithWithon| BOOT::|pfNot|
            BOOT::|d02kefSolve,fc| BOOT::|pfId| BOOT::|pfTupleParts|
            BOOT::|d02kefSolve,fb| BOOT::|pfWhereContext|
            BOOT::|InvestigateConditions| BOOT::|pfCheckArg|
            BOOT::|InvestigateConditions,reshape|
            BOOT::|d02kefSolve,fa| BOOT::|pfCheckId|
            BOOT::|getPossibleViews| BOOT::|pfQualTypeQual|
            BOOT::|ICformat| BOOT::|pfTupleListOf|
            BOOT::|InvestigateConditions,mkNilT| BOOT::|pfQualTypeType|
            BOOT::|pfQualType?| BOOT::|getViewsConditions|
            BOOT::|pfDWhereExpr| BOOT::|ICformat,Hasreduce|
            BOOT::|pfForinLhs| BOOT::|ICformat,ORreduce|
            BOOT::|d02gbfSolve,fi| BOOT::|d02gbfSolve,fh|
            BOOT::|pfDWhereContext| BOOT::|CategoriesFromGDC|
            BOOT::|pfSymbolVariable?| BOOT::|d02rafSolve,fc|
            BOOT::|pfMLambdaArgs| BOOT::|optFunctorBodyRequote|
            BOOT::|d02gafSolve,ff| BOOT::|pfInlineItems|
            BOOT::|d02rafSolve,fb| BOOT::|pfSemiColonBody|
            BOOT::|d02rafSolve,fa| BOOT::|pfSemiColon?|
            BOOT::|optFunctorBodyQuotable| BOOT::|d02gafSolve,fd|
            BOOT::|pfInline| BOOT::|pf0AddBase| BOOT::|pfAddBase|
            BOOT::|d02ejfSolve,fb| BOOT::|pfSemiColon|
            BOOT::|pfAddAddon| BOOT::|d02ejfSolve,fa|
            BOOT::|pfAddAddin| BOOT::|d02bhfSolve,fb|
            BOOT::|pf0ImportItems| BOOT::|d02bhfSolve,fa|
            BOOT::|pfImportItems| BOOT::|pfInline?|
            BOOT::|pfReturnFrom| BOOT::|pfImport|
            BOOT::|d02gafSolve,fb| BOOT::|pfListOf?|
            BOOT::|pfFreeItems| BOOT::|pf0TLambdaArgs|
            BOOT::|d02gafSolve,fa| BOOT::|pfTLambdaArgs|
            BOOT::|pfTLambdaBody| BOOT::|pfExitNoCond|
            BOOT::|pf0WrongRubble| BOOT::|pfWrongRubble|
            BOOT::|pfTLambdaRets| BOOT::|pfWrongWhy|
            BOOT::|pfIterateFrom| BOOT::|pfLocalItems|
            BOOT::|pfAttributeExpr| BOOT::|d02cjfSolve,fb|
            BOOT::|pfAttribute?| BOOT::|pfLoop| BOOT::|d02cjfSolve,fa|
            BOOT::|pfDo| BOOT::|pfWDeclareDoc| BOOT::|pfSecond|
            BOOT::|pfWDeclareSignature| BOOT::|pfWDeclare?|
            BOOT::|pfCheckInfop| BOOT::|d03edfSolve,fd|
            BOOT::|pf0CollectIterators| BOOT::|pfExport?|
            BOOT::|d03edfSolve,fc| BOOT::|pfDeclPart?|
            BOOT::|d03edfSolve,fa| IDENTITY BOOT::|pfDWhere?|
            BOOT::|pfImport?| BOOT::|pfTyping?| BOOT::|pfSuchthat|
            BOOT::|pfComDefinition?| BOOT::|pfTLambda?| BOOT::|pfWhile|
            BOOT::|pfAdd?| BOOT::|pf0ExportItems| BOOT::|pfExportItems|
            BOOT::|pfExpr?| BOOT::|pfWith?| BOOT::|e01sefSolve,f|
            BOOT::|pf0TypingItems| BOOT::|pfTypingItems|
            BOOT::|pfGetLineObject| BOOT::|lnFileName?|
            BOOT::|e01bgfSolve,g| BOOT::|e01bgfSolve,f|
            BOOT::|pfNopos?| BOOT::|lnExtraBlanks|
            BOOT::|pfPlaceOfOrigin| BOOT::|ravel|
            BOOT::|poPlaceOfOrigin| BOOT::|e01bafSolve,f|
            BOOT::|pfFileName?| BOOT::|poFileName?|
            BOOT::|parseAndEval| BOOT::|getDomainHash| BOOT::|aplTran1|
            BOOT::|hasAplExtension| BOOT::|htpDomainConditions|
            BOOT::|aplTranList| BOOT::|postDefArgs|
            BOOT::|postTranScripts| BOOT::|getHtMacroItem|
            BOOT::|postTranScripts,fn| BOOT::|unTuple|
            BOOT::|isPackageType| BOOT::|buttonNames|
            BOOT::|postcheckTarget| BOOT::|postcheck|
            BOOT::|dbNonEmptyPattern| BOOT::|postBlockItemList|
            VMLISP:|last| BOOT::|postBlockItem| BOOT::|postQuote|
            BOOT::|postSequence| BOOT::|postTranList|
            BOOT::|checkWarning| VMLISP:HASHTABLE-CLASS
            BOOT::|downlinkSaturn| BOOT::|decodeScripts,fn|
            BOOT::|mkUnixPattern| BOOT::|tuple2List|
            BOOT::|postCapsule| BOOT::|patternCheck| BOOT::|postElt|
            BOOT::|postSEGMENT| BOOT::|e04nafSolve,ff|
            BOOT::|postIteratorList| BOOT::|npEqPeek| BOOT::|postForm|
            BOOT::|htAllOrNum| BOOT::|postOp| BOOT::|stringize|
            VMLISP:LISTOFFREES BOOT::|postTuple| BOOT::|postExit|
            BOOT::|parseWord| BOOT::|postMapping| VMLISP:GENSYMP
            BOOT::|postMDef| BOOT::|pfAttribute| BOOT::|postDef|
            BOOT::|npRestore| BOOT::|postCategory| BOOT::|aplTran|
            BOOT::|containsBang| BOOT::|htMakePathKey| BOOT::|postJoin|
            BOOT::|npWConditional| BOOT::|postTransformCheck|
            BOOT::|npBraced| VMLISP:PAPPP
            BOOT::|chkAllNonNegativeInteger| BOOT::|postIf|
            BOOT::|chkNonNegativeInteger| BOOT::|postPretend|
            BOOT::|pfId?| BOOT::|postAtSign| BOOT::|npBracketed|
            BOOT::|postColon| BOOT::|chkDirectory|
            BOOT::|postColonColon| BOOT::|postWhere|
            BOOT::|npZeroOrMore| BOOT::|postSemiColon|
            BOOT::|postBlock| BOOT::|pfParts| BOOT::|deepestExpression|
            BOOT::|translateYesNo2TrueFalse| BOOT::|postComma|
            BOOT::|pfEnSequence| BOOT::|comma2Tuple|
            BOOT::|npParenthesized| BOOT::|chkOutputFileName|
            BOOT::|postReduce| BOOT::|chkPosInteger| BOOT::|postAdd|
            BOOT::|pfUnSequence| BOOT::|postTupleCollect|
            BOOT::|postCollect| BOOT::|postRepeat| BOOT::|postIn|
            BOOT::|htShowCount| BOOT::|satisfiesUserLevel|
            BOOT::|postin| BOOT::|postQUOTE| BOOT::|pfListOf|
            BOOT::|postScripts| BOOT::|translateTrueFalse2YesNo|
            BOOT::|postWith| BOOT::|e02dffSolve,fp| VMLISP:CHARP
            BOOT::|chkNameList| BOOT::|isSymbol| BOOT::INFIXTOK
            BOOT::|npQualified| BOOT::SKIP-TO-ENDIF
            BOOT::|npConditional| BOOT::|stackMessageIfNone|
            BOOT::PREPARSEREADLINE BOOT::|npElse|
            BOOT::|translateYesNoToTrueFalse| BOOT::|npMissing|
            BOOT::PREPARSEREADLINE1 BOOT::|npDDInfKey| VMLISP:RPACKFILE
            BOOT::SKIP-IFBLOCK BOOT::|tokPart| BOOT::|npInfKey|
            VMLISP:RECOMPILE-LIB-FILE-IF-NECESSARY BOOT::|npWith|
            BOOT::|optimizeFunctionDef| BOOT::PREPARSE-ECHO
            BOOT::|npCompMissing| VMLISP::LIBSTREAM-DIRNAME
            BOOT::ATENDOFUNIT BOOT::PARSEPRINT BOOT::|npAdd|
            BOOT::PREPARSE1 BOOT::|e02defSolve,fp|
            BOOT::|htpRadioButtonAlist| BOOT::MONITOR-DATA-COUNT
            BOOT::MONITOR-DATA-NAME BOOT::|htpDomainPvarSubstList|
            BOOT::MONITOR-DATA-SOURCEFILE BOOT::|profileTran|
            BOOT::MONITOR-DELETE BOOT::|pfSequenceToList|
            BOOT::MONITOR-DATA-MONITORP BOOT::|pfSequenceArgs|
            BOOT::|renamePatternVariables| BOOT::|pfSequence?|
            BOOT:|LispEval| BOOT::|pfNovalueExpr|
            BOOT::MONITOR-EXPOSEDP BOOT::|pfNovalue?|
            BOOT::|htpDomainVariableAlist| BOOT::|pfNotArg|
            BOOT::MONITOR-APROPOS BOOT::|pfNot?| BOOT::MONITOR-DATA-P
            BOOT::|pfOrRight| BOOT::|pfOrLeft| BOOT::MONITOR-LIBNAME
            BOOT::|pfOr?| BOOT::MONITOR-FILE BOOT::|pfAndRight|
            BOOT::|pfAndLeft| BOOT::|pfAnd?| BOOT::MONITOR-SPADFILE
            BOOT::|getDomainsInScope| BOOT::|pfWrong?|
            BOOT::MONITOR-PARSE BOOT::|pf0LocalItems|
            BOOT::MONITOR-DECR BOOT::|pfLocal?| BOOT::|pfNovalue|
            BOOT::|pf0FreeItems| BOOT::|npItem1| BOOT::|pfFree?|
            BOOT::|pfRestrictType| BOOT::MONITOR-INCR
            BOOT::|pfRestrictExpr| BOOT::|npLetQualified|
            BOOT::|isConstructorForm| BOOT::|pfRestrict?|
            BOOT::|library| BOOT::MONITOR-NRLIB BOOT::|pfDefinition?|
            BOOT::|unknownTypeError| BOOT::|pfAssignRhs|
            BOOT::|pf0AssignLhsItems| BOOT::|pfAssign?| BOOT::|quotify|
            BOOT::|pfDoBody| BOOT::|reportHashCacheStats|
            BOOT::MONITOR-DIRNAME BOOT::|pfDo?|
            BOOT::|mkHashCountAlist| BOOT::|pfSuchthatCond|
            BOOT::|displayCacheFrequency| BOOT::|pfSuchthat?|
            BOOT::MONITOR-CHECKPOINT BOOT::|pfWhileCond|
            BOOT::|pfWhile?| BOOT::|pfForinWhole|
            BOOT::|outputDomainConstructor| BOOT::|e02dffSolve,fmu|
            BOOT::|pf0ForinLhs| BOOT::|typeTimePrin|
            BOOT::|pfCheckMacroOut| BOOT::|isSomeDomainVariable|
            BOOT::|pfForin?| BOOT::|displayHashtable|
            BOOT::|pfCollect?| BOOT::|removeZeroOne| BOOT::|npEncAp|
            BOOT::|pf0LoopIterators| BOOT::|addBlanks|
            BOOT::|compHasFormat| BOOT::|loopIters2Sex|
            BOOT::|noBlankBeforeP| BOOT::|pfLoop?|
            BOOT::|stopTimingProcess| BOOT::|noBlankAfterP|
            BOOT::|?comp| BOOT::|pfExitExpr| BOOT::|pfExitCond|
            BOOT::|compileQuietly| BOOT::|sayLongOperation|
            BOOT::|isAlmostSimple,setAssignment| BOOT::|pfExit?|
            BOOT::|compileInteractive| BOOT::|say2PerLineThatFit|
            BOOT::?COMP BOOT::|npBracked| BOOT::|pfFromdomDomain|
            BOOT::|startTimingProcess| BOOT::|prEnv|
            BOOT::|pfFromdomWhat| BOOT::|operationLink| BOOT::|opTran|
            BOOT::|pfFromdom?| BOOT::|hasType,fn| BOOT::|pfPretendType|
            BOOT::|clearCategoryCache| BOOT::|pfTuple|
            BOOT::|pfPretendExpr| BOOT::|clearConstructorCache|
            BOOT::|qModemap| BOOT::|pfPretend?|
            BOOT::|splitListSayBrightly| BOOT::|formatModemap|
            BOOT::|pfCoercetoType| BOOT::|printEnv|
            BOOT::|pfCoercetoExpr| BOOT::|tabber| BOOT::|pfCoerceto?|
            BOOT::|decExitLevel| BOOT::|pfTaggedExpr|
            BOOT::|splitSayBrightly| BOOT::|pfTaggedTag|
            BOOT::|brightPrintRightJustify| BOOT::|pfTagged?|
            BOOT::|pfIfElse| BOOT::|splitSayBrightlyArgument|
            BOOT::DATABASE-ABBREVIATION BOOT::|pfIfThen|
            BOOT::|mkDomainConstructor| BOOT::|pfIfCond|
            BOOT::|brightPrint1| BOOT::SET-FILE-GETTER BOOT::|mkList|
            BOOT::|pfIf?| BOOT::|brightPrint| BOOT::|pf0TupleParts|
            BOOT::|pfTuple?| BOOT::DATABASE-SOURCEFILE
            BOOT::|minimalise| BOOT::|minimalise,min|
            BOOT::|pfLiteral?| BOOT::|mkDevaluate|
            BOOT::|minimalise,HashCheck| BOOT::|pfSymbolSymbol|
            BOOT::|numberOfEmptySlots| BOOT::|pfSymbol?|
            BOOT::|sayBrightlyLength1| BOOT::|hasOptArgs?|
            BOOT::|npFromdom1| BOOT::|pfSuchThat2Sex|
            BOOT::|CDRwithIncrement| BOOT::|npPush|
            BOOT::|segmentedMsgPreprocess| BOOT::|pfOp2Sex|
            BOOT::SHOWDATABASE BOOT::|pmDontQuote?| BOOT::|initCache|
            BOOT::|blankIndicator| BOOT::|pfDefinitionRhs|
            BOOT::|npEqKey| BOOT::|pf0DefinitionLhsItems|
            BOOT::|pfApplicationArg| BOOT::SQUEEZE
            BOOT::|rulePredicateTran| BOOT::|pfRuleRhs| BOOT::UNSQUEEZE
            BOOT::|npDotted| BOOT::|pfRuleLhsItems|
            BOOT::|constructor2ConstructorForm| BOOT::|npAngleBared|
            BOOT::|pfCollectBody| BOOT::DATABASE-SPARE
            BOOT::|pfCollectIterators| BOOT::|remHashEntriesWith0Count|
            BOOT::|float2Sex| BOOT::DATABASE-DEFAULTDOMAIN
            BOOT::|npListing| BOOT::|pfLiteralString|
            BOOT::DATABASE-NILADIC BOOT::|pfLeafToken|
            BOOT::DATABASE-CONSTRUCTORCATEGORY BOOT::|pfLiteralClass|
            BOOT::DATABASE-OBJECT BOOT::DATABASE-MODEMAPS
            BOOT::DATABASE-OPERATIONALIST BOOT::DATABASE-DEPENDENTS
            BOOT::DATABASE-USERS BOOT::DATABASE-PARENTS BOOT::|tokPosn|
            BOOT::|pileColumn| BOOT::|underDomainOf|
            BOOT::DATABASE-PREDICATES BOOT::|underDomainOf;|
            BOOT::|pileCforest| BOOT::DATABASE-ATTRIBUTES
            BOOT::|enPile| BOOT::|separatePiles|
            BOOT::DATABASE-DOCUMENTATION BOOT::|pilePlusComments|
            BOOT::|pilePlusComment| BOOT::|insertpile|
            BOOT::|lastTokPosn| BOOT::|firstTokPosn|
            BOOT::|pileComment| BOOT::|isValidType;|
            BOOT::|lnGlobalNum| BOOT::|lnLocalNum|
            BOOT::|pfSourcePositionlist| BOOT::|isPartialMode|
            BOOT::|pfSourcePositions|
            BOOT::|makeOldAxiomDispatchDomain| BOOT::|lnString|
            BOOT::DATABASE-ANCESTORS BOOT::|poNoPosition?|
            BOOT::|poImmediate?| BOOT::|poIsPos?| BOOT::|hashString|
            BOOT::DATABASE-CONSTRUCTOR BOOT::|pfPosn|
            BOOT::|isLegitimateRecordOrTaggedUnion|
            BOOT::|lnImmediate?| BOOT::|listOfDuplicates|
            BOOT::|pfPosImmediate?| BOOT::|isPolynomialMode|
            BOOT::|pfSourceToken| BOOT::|equiType| BOOT::|pfFirst|
            BOOT::|getUnderModeOf| FOAM::PROCESS-IMPORT-ENTRY
            BOOT::|deconstructT| BOOT::|attribute?| BOOT::TRARGPRINT
            BOOT::|makeLazyOldAxiomDispatchDomain| BOOT::|eqType|
            BOOT::DATABASE-P BOOT::LINE-ADVANCE-CHAR
            BOOT::DATABASE-COSIG BOOT::LINE-AT-END-P BOOT::TRBLANKS
            BOOT::MAKE-STRING-ADJUSTABLE BOOT::|sayMessage|
            BOOT::|dropPrefix| BOOT::TRMETA1 BOOT::|mkDatabasePred|
            BOOT::TRY-GET-TOKEN BOOT::TRMETA BOOT::|namestring|
            BOOT::|isFreeFunctionFromMmCond| BOOT::|isSharpVarWithNum|
            BOOT::|isFreeFunctionFromMm|
            BOOT::|mkAlistOfExplicitCategoryOps| BOOT::LINE-P
            BOOT::|mkAlistOfExplicitCategoryOps,atomizeOp|
            BOOT::|flattenSignatureList| BOOT::|collectAndDeleteAssoc|
            BOOT::|checkSplitBrace| BOOT::|getFirstArgTypeFromMm|
            BOOT::|checkSplitPunctuation| BOOT::|checkSplitOn|
            BOOT::|checkSplitBackslash| BOOT::STACK-POP
            BOOT::|checkAlphabetic| BOOT::|isDomainSubst|
            BOOT::UNDERSCORE BOOT::|collectComBlock|
            BOOT::|getDomainFromMm| BOOT::/MDEF BOOT::STACK-TOP
            BOOT::|formal2Pattern| BOOT::|finalizeDocumentation,hn|
            BOOT::STACK-P BOOT::LINE-NEXT-CHAR BOOT::REDUCTION-RULE
            BOOT::|checkExtractItemList|
            BOOT::|recordHeaderDocumentation| BOOT::|checkIeEgfun|
            BOOT::|appendOver| BOOT::|rebuild| BOOT::|checkInteger|
            BOOT::|spool| BOOT::|setOutputCharacters|
            BOOT::/VERSIONCHECK BOOT::INTERP-MAKE-DIRECTORY
            BOOT::CACHEKEYEDMSG BOOT::XDR-STREAM-HANDLE
            BOOT::|normalizeArgFileName| BOOT::|checkTrim,trim|
            BOOT::XDR-STREAM-P BOOT::|checkDocError| BOOT::|bootFind|
            BOOT::|checkTrim,wherePP| BOOT::|checkDecorateForHt|
            BOOT::XDR-STREAM-NAME BOOT::|checkRecordHash|
            BOOT::|checkIsValidType| BOOT::|normalizeTimeAndStringify|
            BOOT::SETLETPRINTFLAG BOOT::|checkGetParse|
            BOOT::|checkGetStringBeforeRightBrace|
            BOOT::|checkGetLispFunctionName| BOOT::MAKE-DIRECTORY
            BOOT::|checkLookForRightBrace|
            BOOT::|checkLookForLeftBrace| BOOT::|checkFixCommonProblem|
            BOOT::|checkArguments| BOOT::SHAREDITEMS BOOT::|checkTexht|
            BOOT::|isVowel| BOOT::|getOfCategoryArgument|
            BOOT::|checkAddPeriod| BOOT::|newMKINFILENAM|
            BOOT::|getFunctionSourceFile1| BOOT::|checkDecorate|
            BOOT::|pathname?| BOOT::|hasNoVowels| BOOT::|checkBalance|
            BOOT::|checkSayBracket| BOOT::|pfSequence2Sex|
            BOOT::|checkBeginEnd| BOOT::|pf2Sex1| BOOT::|checkIeEg|
            BOOT::|pfSequence2Sex0| BOOT::|checkDocError1|
            BOOT::|ruleLhsTran| BOOT::|patternVarsOf|
            BOOT::|checkAddMacros| BOOT::|pfLambdaTran|
            BOOT::|pfLambdaBody| BOOT::|checkSplit2Words|
            BOOT::|pfLambdaRets| BOOT::|checkAddSpaces|
            BOOT::|pfTypedType| BOOT::|newString2Words|
            BOOT::|pfCollectArgTran| BOOT::|checkGetArgs|
            BOOT::|pfTyped?| BOOT::|pfRhsRule2Sex|
            BOOT::|pfLhsRule2Sex| BOOT::|checkDocMessage|
            BOOT::|checkRemoveComments| BOOT::|pfRule2Sex|
            BOOT::|checkTrimCommented| BOOT::|pfLambda2Sex|
            BOOT::|pfDefinition2Sex| BOOT::|leftTrim|
            BOOT::|pfCollect2Sex| BOOT::|checkGetMargin|
            BOOT::|pfApplication2Sex| BOOT::|whoOwns|
            BOOT::|pfLiteral2Sex| BOOT::|pfWhereExpr|
            BOOT::|pf0WhereContext| BOOT::|pfIterate?|
            BOOT::|pfReturnExpr| BOOT::|pfReturn?| BOOT::|setOutStream|
            BOOT::|pfBreakFrom| BOOT::|pfBreak?| BOOT::|pfRule?|
            BOOT::DATABASE-CONSTRUCTORMODEMAP BOOT::|%key| BOOT::|ppos|
            BOOT::|porigin| BOOT::|pfLinePosn| BOOT::|pfCharPosn|
            BOOT::|pfImmediate?| BOOT::|pfNoPosition?| BOOT::|%pos|
            BOOT::|processPackage,setPackageCode| BOOT::|%fname|
            BOOT::|pfname| BOOT::|%origin| BOOT::|mkRepititionAssoc|
            BOOT::|%id| BOOT::|pkey| BOOT::|getCaps|
            BOOT::|constructorCategory| BOOT::|evalDomain|
            BOOT::|parseAtom| BOOT::|systemErrorHere|
            BOOT::|coerceMap2E| BOOT::|parseConstruct|
            BOOT::|parseTran,g| BOOT::|parseWhere| BOOT::|parseVCONS|
            BOOT::|parseSeq| BOOT::|transSeq| BOOT::|postError|
            BOOT::|parseSegment| BOOT::|parseReturn|
            BOOT::|parsePretend| BOOT::|parseType| BOOT::|RecordInner|
            BOOT::|parseTypeEvaluate| BOOT::|isRecord|
            BOOT::|parseMDEF| BOOT::|parseLETD| BOOT::|parseLET|
            BOOT::|transIs| BOOT::|CatEval| BOOT::|transUnCons|
            BOOT::|parseLeave| BOOT::|mkCategory,Prepare|
            BOOT::|parseJoin| BOOT::|parseJoin,fn| BOOT::|parseIsnt|
            BOOT::|parseBigelt| BOOT::|parseIs|
            BOOT::|DropImplementations| BOOT::|parseInBy|
            BOOT::|parseIn| BOOT::|FindFundAncs| BOOT::|parseHas|
            BOOT::|parseHas,mkand| BOOT::|TruthP| BOOT::|parseHas,fn|
            BOOT::|parseExit| BOOT::|isCategory| BOOT::|parseDEF|
            BOOT::|setDefOp| BOOT::|mkCategory,Prepare2|
            BOOT::|transIs1| BOOT::|isListConstructor|
            BOOT::|parseCategory| BOOT::|parseDropAssertions|
            BOOT::|parseAtSign| BOOT::|parseHasRhs| BOOT::|parseCoerce|
            BOOT::|getCategoryExtensionAlist0| BOOT::|parseColon|
            BOOT::|getCategoryExtensionAlist| BOOT::|sayMSG|
            BOOT::|parseDollarGreaterThan| BOOT::|squeeze1|
            BOOT::|squeezeList| BOOT::|parseGreaterThan|
            BOOT::|categoryParts,exportsOf|
            BOOT::|makeSimplePredicateOrNil| BOOT::|simpHasPred,eval|
            BOOT::|simpHasPred,simp| BOOT::|specialModeTran|
            BOOT::|compressHashTable| BOOT::|simpOrUnion|
            BOOT::|clearCategoryTable| BOOT::|transCategoryItem|
            BOOT::|parseCases| BOOT::TOKEN-PRINT BOOT::|getConstrCat|
            BOOT::LINE-CURRENT-SEGMENT
            BOOT::|mkCategoryExtensionAlistBasic| BOOT::STACK-CLEAR
            BOOT::|macrop| BOOT::|showCategoryTable|
            BOOT::|clearTempCategoryTable| BOOT::TOKEN-P
            BOOT::|addToCategoryTable|
            BOOT::|simpHasPred,simpDevaluate|
            BOOT::|mkCategoryExtensionAlist|
            BOOT::|updateCategoryTableForCategory|
            BOOT::|isFormalArgumentList| BOOT::|defaultingFunction|
            BOOT::|getOperationAlistFromLisplib|
            BOOT::|getConstructorAbbreviation|
            BOOT::|predicateBitIndex| BOOT::|encodeCatform|
            BOOT::|evalableConstructor2HtString,unquote|
            BOOT::|orderByContainment| BOOT::|stripOutNonDollarPreds|
            BOOT::|isHasDollarPred| BOOT::|transHasCode|
            BOOT::|removeAttributePredicates| BOOT::|getCatAncestors|
            BOOT::|makeCompactDirect1,fn| BOOT::|depthAssoc|
            BOOT::|depthAssocList| BOOT::|fromHeading|
            BOOT::|htAddHeading| BOOT::|infovec| BOOT::|dcData1|
            BOOT::|dbDoesOneOpHaveParameters?| BOOT::|ppTemplate|
            BOOT::|dbOuttran| BOOT::|bitsOf| BOOT::|mathform2HtString|
            BOOT::|conname2StringList| BOOT::|dcData|
            BOOT::|predicateBitIndexRemop| BOOT::|form2StringList|
            BOOT::|dbConform| BOOT::|dbMapping2StringList|
            BOOT::|htTab| BOOT::|orderBySubsumption| BOOT::|dcCats|
            BOOT::|dcCats1| BOOT::|getLookupFun|
            BOOT::|listOfCategoryEntries| BOOT::|niladicHack|
            BOOT::|dbGatherDataImplementation,fn| BOOT::|NRTcatCompare|
            BOOT::|dbGatherDataImplementation,gn| BOOT::|template|
            BOOT::|dcAtts| BOOT::|dcSlots| BOOT::|dcOpTable|
            BOOT::|getConstructorArgs| BOOT::|dbNewConname|
            BOOT::|escapeString| BOOT::|nodeSize| BOOT::|fortexp0|
            BOOT::|vectorSize| BOOT::|myLastAtom|
            BOOT::|isDefaultPackageForm?| BOOT::|numberOfNodes|
            BOOT::|dcOps| BOOT::|removeAttributePredicates,fn|
            BOOT::|removeAttributePredicates,fnl|
            BOOT::DATABASE-CONSTRUCTORFORM BOOT::|makeCompactDirect|
            BOOT::|htSayTuple| BOOT::|dcPreds| BOOT::|htSayArgument|
            BOOT::|makeDomainTemplate| BOOT::|hashTable2Alist|
            BOOT::|stuffDomainSlots| BOOT::|getExportCategory|
            BOOT::|koCatOps1| BOOT::|simplifyAttributeAlist|
            BOOT::|hasPatternVar| BOOT::|dcAll|
            BOOT::|findSubstitutionOrder?| BOOT::|isInstantiated|
            BOOT::|modemap2SigConds| BOOT::|getSubstCandidates|
            BOOT::|htSayExplicitExports|
            BOOT::|fortFormatCharacterTypes| BOOT::|opPageFastPath|
            BOOT::|fortFormatCharacterTypes,mkParameterList2|
            BOOT::|exp2FortOptimizeCS1,popCsStacks|
            BOOT::|kFormatSlotDomain,fn|
            BOOT::|fortFormatTypes,unravel| BOOT::|formatSlotDomain|
            BOOT::|getSubstSignature| BOOT::|getfortexp1|
            BOOT::|fortran2Lines1| BOOT::|koOps,trim|
            BOOT::|isPatternVar| BOOT::|dispfortexp1|
            BOOT::|displayBreakIntoAnds| VMLISP::LIBRARY-FILE
            VMLISP::GET-DIRECTORY-LIST VMLISP::PROBE-NAME
            VMLISP::SPAD-FIXED-ARG VMLISP::LIBSTREAM-INDEXSTREAM
            VMLISP::LIBSTREAM-INDEXTABLE VMLISP::LIBSTREAM-MODE
            VMLISP::GETINDEXTABLE VMLISP::GET-INDEX-TABLE-FROM-STREAM
            VMLISP::LIBSTREAM-P BOOT::|NRTassocIndexAdd|
            BOOT::|optDeltaEntry,quoteSelector| BOOT::|NRToptimizeHas|
            BOOT::|listOfBoundVars| BOOT::|slot1Filter,fn|
            BOOT::|reverseCondlist| BOOT::|c05pbfSolve,fb|
            BOOT::|genDeltaSig| BOOT::|c05pbfSolve,fa|
            BOOT::|c05nbfSolve,fb|
            BOOT::|NRTsubstDelta,replaceSlotTypes|
            BOOT::|c05nbfSolve,fa| BOOT::|slot1Filter|
            BOOT::|NRTsubstDelta| BOOT::|c06ebfSolve,f|
            BOOT::|catList2catPackageList,fn| BOOT::|addConsDB|
            BOOT::|changeDirectoryInSlot1,fn|
            BOOT::|changeDirectoryInSlot1,sigloc|
            BOOT::|NRTreplaceAllLocalReferences| BOOT::|mkSlot1sublis|
            BOOT::|NRTputInLocalReferences| BOOT::|NRTputInHead|
            BOOT::|NRTcheckVector| BOOT::|NRTmakeSlot1|
            BOOT::|NRTisExported?| BOOT::|makePredicateBitVector|
            BOOT::|catList2catPackageList| BOOT::|c06eafSolve,f|
            BOOT::|NRTgetAddForm| BOOT::|c06frfSolve,h|
            BOOT::|NRTaddInner| BOOT::|c06ekfSolve,f|
            BOOT::|updateSlot1DataBase| BOOT::|genDeltaSpecialSig|
            BOOT::|c06gbfSolve,f| BOOT::|newHasTest,evalCond|
            BOOT::|c06fufSolve,hn| BOOT::|c06gcfSolve,f|
            BOOT::|c06fufSolve,hm| BOOT::|c06fpfSolve,h|
            BOOT::|c06fqfSolve,h| BOOT::|c06ecfSolve,f| BOOT:|length1?|
            BOOT:|ListRemoveDuplicatesQ| BOOT:|ListNReverse|
            BOOT::|d01gbfSolve,f| BOOT:|TableKeys|
            BOOT::|ncParseAndInterpretString| BOOT::|pfPrintSrcLines|
            BOOT::TERMINATOR VMLISP::MAKE-BVEC
            BOOT::|exp2FortOptimizeCS| BOOT::|exp2FortOptimizeCS1|
            BOOT::|expression2Fortran| BOOT::|fortranCleanUp|
            BOOT::|exp2FortOptimize| BOOT::|fortPre| BOOT::|incRgen|
            BOOT::|segment| BOOT::|exp2Fort1| FOAM:|printNewLine|
            FOAM:|formatDFloat| FOAM:|formatSFloat| FOAM:|formatBInt|
            BOOT::|npNull| FOAM:|formatSInt| BOOT::|isFloat|
            BOOT::|fortExpSize| BOOT::|parseAndEval1|
            BOOT::|printStats| BOOT::|mkParameterList|
            BOOT::|unStackWarning| BOOT::|fortFormatIntrinsics|
            BOOT::?M BOOT::|displayLines| BOOT::|?m| BOOT::|addCommas|
            BOOT::|unErrorRef| BOOT::|fortran2Lines| BOOT::|uppretend|
            BOOT::|typeOfType| BOOT::|checkLines| BOOT::|uptypeOf|
            BOOT::|statement2Fortran| BOOT::|displayLines1|
            BOOT::|upQUOTE| BOOT::|dispStatement|
            BOOT::|makeCommonEnvironment,interLocalE| BOOT::|upSEQ|
            BOOT::|mkMat| BOOT::|makeCommonEnvironment,interC|
            BOOT::|fortSize,elen| BOOT::|quote2Wrapped|
            BOOT::|deltaContour,eliminateDuplicatePropertyLists|
            BOOT::|fortSize| BOOT::|checkType| BOOT::|interpOnlyREPEAT|
            BOOT::|upREPEAT1| BOOT::|old2NewModemaps| BOOT::|upREPEAT0|
            BOOT::|displayModemaps| BOOT::|uplocal|
            BOOT::|fortFormatElseIf| BOOT::|upfree|
            BOOT::|indentFortLevel| FOAM:|Halt| BOOT::|upREPEAT|
            BOOT::|?modemaps| BOOT::|fortFormatIf| BOOT::|upDEF|
            BOOT::|upreturn| BOOT::|uperror| BOOT::|what|
            BOOT::?MODEMAPS BOOT::|whatSpad2Cmd| BOOT::|stackAndThrow|
            BOOT::|makeCommonEnvironment,interE| BOOT::|constructor|
            BOOT::|alqlGetParams| BOOT::|makeNonAtomic|
            BOOT::|alqlGetOrigin| BOOT::|alqlGetKindString|
            BOOT::|npboot| BOOT::|compAndTrace| VMLISP::SIMPLE-ARGLIST
            BOOT::|string2BootTree| VMLISP::REMOVE-FLUIDS
            BOOT::|f04qafSolve,f| BOOT::|getBrowseDatabase|
            BOOT::|wrapSEQExit| BOOT::|compileSpadLispCmd|
            BOOT::|incExitLevel| BOOT::ASEC BOOT::|mkErrorExpr,bracket|
            BOOT::|displayProperties,sayFunctionDeps| BOOT::ACOT
            BOOT::|displayMacro| VMLISP::QUOTESOF BOOT::|genDeltaEntry|
            BOOT::|displayParserMacro| VMLISP::DEQUOTE
            BOOT::|compilerMessage| BOOT::MANEXP
            BOOT::|asharpConstructorName?| VMLISP::ISQUOTEDP
            BOOT::|f04mcfSolve,gj| BOOT::|f04arfSolve,h| VMLISP::VARP
            BOOT::|f04mcfSolve,fd| BOOT::|dbpHasDefaultCategory?|
            BOOT::|stackMessage| BOOT::|dbAddChainDomain|
            BOOT::|listOfIdentifiersIn| BOOT::|knownInfo|
            BOOT::|outerProduct| BOOT::|f04jgfSolve,h|
            BOOT::|helpSpad2Cmd| BOOT::|f04mcfSolve,fal|
            BOOT::|sayAsManyPerLineAsPossible| BOOT::|extractHasArgs|
            BOOT::|read| BOOT::|readSpad2Cmd| BOOT::|displayMacros|
            BOOT::|warnLiteral| BOOT::|getConstructorModemap|
            BOOT::GCOPY BOOT::|koAttrs,fn| BOOT::|displayOperations|
            BOOT::|libConstructorSig| BOOT::|f04asfSolve,h|
            BOOT::|libConstructorSig,fn| BOOT::|npProcessSynonym|
            BOOT::|listOfSharpVars| BOOT::|compileAsharpLispCmd|
            BOOT::|isAlmostSimple| BOOT::|libdbTrim|
            BOOT::|isAlmostSimple,fn| BOOT::|isFunctor|
            BOOT::|stripLisp| BOOT::|parentsOfForm|
            BOOT::|isSideEffectFree| BOOT::|ltrace| BOOT::|dbMkForm|
            BOOT::|trace| BOOT::|compileAsharpCmd| BOOT::MSORT
            BOOT::|displayProplist,fn| BOOT::|removeEnv| BOOT::|load|
            BOOT::|loadSpad2Cmd| BOOT::|dbReadLines| BOOT::?VALUE
            BOOT::|help| BOOT::|?value| BOOT::|trimComments|
            BOOT::|f04atfSolve,h| BOOT::|f04fafSolve,h|
            BOOT::|spreadGlossText| BOOT::?PROPERTIES
            BOOT::|asyExtractAbbreviation| BOOT::|getGlossLines|
            BOOT::|?properties| BOOT::|asyTypeUnit|
            BOOT::|getParentsForDomain| BOOT::|f04fafSolve,g|
            BOOT::|prModemaps| BOOT::|asyTypeItem|
            BOOT::|f04fafSolve,f| BOOT::|importFromFrame|
            BOOT::|decExitLevel,removeExit0|
            BOOT::|closeInterpreterFrame| BOOT::|f04mbfSolve,f|
            BOOT::|tokTran| BOOT::?MODE BOOT::|parseSystemCmd|
            BOOT::|?mode| BOOT::|dumbTokenize| BOOT::|edit|
            BOOT::|editSpad2Cmd| BOOT::|getDefaultPackageClients|
            BOOT::|displayOperationsFromLisplib| BOOT::|say2PerLine|
            BOOT::|getArgumentConstructors,fn|
            BOOT::|getArgumentConstructors,gn| BOOT::|display|
            BOOT::displaySpad2Cmd BOOT::|frameEnvironment|
            BOOT::|getArgumentConstructors| BOOT::|buildLibAttrs|
            BOOT::|buildLibOps| BOOT::|splitIntoOptionBlocks|
            BOOT::|writedb| BOOT::|getFirstWord| BOOT::|f07aefSolve,fp|
            BOOT::|isSharpVar| BOOT::HAS_SHARP_VAR
            BOOT::|dbHasExamplePage| BOOT::|isExistingFile|
            BOOT::|mkHasArgsPred| BOOT::|lefts| BOOT::|findEqualFun|
            BOOT::|dbFromConstructor?| BOOT::|f01mafSolve,f|
            BOOT::|dbShowKind| BOOT::|unAbbreviateIfNecessary|
            BOOT:|DeepCopy| BOOT::|evalDomainOpPred,convertCatArg|
            BOOT::|dbOpsForm| BOOT::|form2Fence| BOOT::|devaluateList|
            BOOT::|dbConstructorDoc,fn| FOAM:|fiStrHash|
            BOOT::|dbGetInputString| BOOT::|pmTransFilter|
            BOOT::|dbExtractUnderlyingDomain| FOAM:|fiGetDebugger|
            BOOT::|isValidType| BOOT:|ByteFileReadLine| BOOT::RENAME
            BOOT::|isExposedConstructor| FOAM:|fiSetDebugVar|
            BOOT:|InputStream?| BOOT::|ncParseFromString|
            BOOT:|OutputStream?| BOOT:|StreamSize|
            BOOT:|StreamGetPosition| BOOT:|StreamEnd?|
            BOOT:|StreamClose| BOOT::|dbConstructorDoc,gn|
            BOOT::|digits2Names| BOOT::|dbCompositeWithMap|
            BOOT::|extractFileNameFromPath| BOOT:|ToPathname|
            BOOT::IDENT-CHAR-LIT BOOT::IS-CONSOLE-NOT-XEDIT
            BOOT::|dbAddChain| BOOT::MESSAGEPRINT
            BOOT:|PathnameDirectory| BOOT::MESSAGEPRINT-2
            BOOT::|kFormatSlotDomain| BOOT:|PathnameName|
            BOOT::MESSAGEPRINT-1 BOOT::|devaluate| BOOT:|PathnameType|
            BOOT::|simpCatPredicate| BOOT:|PathnameString|
            BOOT::|dbInfovec| BOOT:|PathnameAbsolute?|
            BOOT:|PathnameWithoutType| BOOT::|getImports|
            BOOT:|PathnameWithoutDirectory| BOOT::|saySpadMsg|
            BOOT::|mkConArgSublis| BOOT:|PathnameToUsualCase|
            BOOT:|PathnameDirectoryOfDirectoryPathname| BOOT::|sayTeX|
            BOOT::|getUsersOfConstructor| BOOT:|Bit?| BOOT::EQUABLE
            BOOT::|makeTemplate| BOOT::|dbShowConsKinds|
            BOOT::|makeOpDirect| BOOT:|Vector?| BOOT::|bcConTable|
            BOOT::|makeOpDirect,fn| BOOT::|mkUniquePred|
            BOOT::PARTCODET BOOT::|bcAbbTable| BOOT::|putPredHash|
            BOOT::|bcNameConTable| BOOT::|NRTinnerGetLocalIndex|
            BOOT::|breakIntoLines| BOOT::|dbConstructorKind|
            BOOT::BLANKP BOOT::|setLoadTimeQ| BOOT:|CharDigit?|
            BOOT::|dbConstructorDoc,hn| BOOT::|setLoadTime|
            BOOT::NONBLANKLOC BOOT::|extendVectorSize|
            BOOT::|markUnique| BOOT:|Cset| BOOT::INDENT-POS
            BOOT::|addConsDB,min| BOOT::NEXT-TAB-LOC
            BOOT:|CsetComplement| BOOT::|measureCommon|
            BOOT:|CsetString| BOOT::|getDependentsOfConstructor|
            BOOT::|htMakeSaturnFilterPage| BOOT::|writeSaturnLines|
            BOOT::|hasIdent| BOOT::|addConsDB,HashCheck|
            BOOT::|parseNoMacroFromString| BOOT::|mapConsDB|
            BOOT::|pf2Sex| BOOT::|squeezeConsDB| BOOT::|StreamNull|
            BOOT::|squeezeConsDB,fn| BOOT::|mkBold| BOOT::|incString|
            BOOT::|postSignature| BOOT::|killColons| BOOT:|ToString|
            BOOT::|e02dffSolve,flam| BOOT::|removeSuperfluousMapping|
            BOOT:|StringImage| BOOT::|dbShowConstructorLines|
            BOOT:|String?| BOOT::|postAtom| BOOT::|dbName|
            BOOT::|makeSpadConstant| BOOT::|postType|
            BOOT::|childrenOf| BOOT::|htBcLispLinks|
            BOOT::|typeCheckInputAreas| BOOT::|kisValidType|
            BOOT::|kCheckArgumentNumbers| BOOT:|StringUpperCase|
            BOOT:|StringLowerCase| BOOT::|topicCode|
            BOOT::|htMakePage1| BOOT::|string2OpAlist|
            BOOT::|htProcessDoitButton| BOOT::|blankLine?|
            BOOT::|htProcessDoneButton| BOOT::|e02defSolve,fmu|
            BOOT::|topics| BOOT::|htProcessBcButtons|
            BOOT::|topLevelInterpEval| BOOT::|tdPrint|
            BOOT::|htProcessToggleButtons|
            BOOT::|htProcessDomainConditions|
            BOOT::|getConstructorSignature| BOOT::|getDefaultProps|
            BOOT::|htInputStrings| BOOT::GET-A-LINE
            BOOT::|getConstructorDocumentation|
            BOOT::|htBcRadioButtons| BOOT::KILL-COMMENTS
            BOOT::|topicCode,fn| BOOT::|htRadioButtons|
            BOOT::|listOfTopics| BOOT::|htLispMemoLinks|
            BOOT::PRINT-RULE BOOT::|code2Classes| BOOT::SET-PREFIX
            BOOT::PRINT-FLUIDS BOOT::|td| BOOT::|unabbrev|
            BOOT::|prTriple| BOOT::|htEndMenu| BOOT::GET-META-TOKEN
            BOOT::|hasNewInfoAlist| BOOT::|addTraceItem|
            BOOT::GET-BSTRING-TOKEN BOOT::|untraceAllDomainLocalOps|
            BOOT::|bright| BOOT::GET-STRING-TOKEN
            BOOT::|formatUnabbreviated| BOOT::GET-IDENTIFIER-TOKEN
            BOOT::BVEC-NOT BOOT::TOKEN-LOOKAHEAD-TYPE
            BOOT::|orderBySlotNumber| BOOT::|traceSpad2Cmd|
            BOOT::|compArgumentConditions| BOOT::|e02defSolve,flam|
            BOOT::|trace1| BOOT::LINE-PRINT BOOT::|saveMapSig|
            BOOT::LINE-PAST-END-P BOOT::|untrace|
            BOOT::|stripOffArgumentConditions|
            BOOT::DATABASE-CONSTRUCTORKIND BOOT::SPAD_ERROR_LOC
            BOOT::|getTraceOptions| BOOT::|transTraceItem|
            BOOT::BOOT-PARSE-1 BOOT::|genSearchTran|
            BOOT::REDUCTION-VALUE BOOT::|removeSurroundingStars|
            BOOT::|getTraceOption| BOOT::|checkFilter| BOOT::PREPARSE
            BOOT::|getMapSubNames| BOOT::|getPreviousMapSubNames|
            BOOT::|coerceSpadArgs2E| BOOT::|clear|
            BOOT::|whatConstructors| BOOT::|stupidIsSpadFunction|
            BOOT::|sayBrightlyLength| BOOT::|stackTraceOptionError|
            BOOT::GET-BOOT-TOKEN BOOT::|reportOpsFromUnitDirectly|
            BOOT::|coerceSpadFunValue2E| BOOT::|searchCount|
            BOOT::GET-SPECIAL-TOKEN BOOT::|domainToGenvar|
            BOOT::|searchDropUnexposedLines| BOOT::GET-SPADSTRING-TOKEN
            BOOT::|compileAsharpArchiveCmd| BOOT::|genDomainTraceName|
            BOOT::GET-NUMBER-TOKEN BOOT::GET-ARGUMENT-DESIGNATOR-TOKEN
            BOOT::|spadReply,printName| BOOT::|abbreviations|
            BOOT::|getTraceOption,hn| BOOT::BOOT-TOKEN-LOOKAHEAD-TYPE
            BOOT::|changeToNamedInterpreterFrame|
            BOOT::|removeTracedMapSigs| BOOT::|findFrameInRing|
            BOOT::|isListOfIdentifiers| BOOT::|string2Constructor|
            BOOT::|isListOfIdentifiersOrStrings| BOOT::|dbString2Words|
            BOOT::|conLowerCaseConTran| BOOT::|emptyInterpreterFrame|
            BOOT::|string2Words| BOOT::|whatCommands|
            BOOT::BUMPERRORCOUNT BOOT::|commandsForUserLevel|
            BOOT::MAKE-ADJUSTABLE-STRING BOOT::|dnForm| BOOT::|pp2Cols|
            BOOT::|dnForm,negate| BOOT::|dbGetCommentOrigin|
            BOOT::|whatSpad2Cmd,fixpat| BOOT::DEF-PROCESS
            BOOT::|synonymsForUserLevel| BOOT::DEF-RENAME
            BOOT::|postTransform|
            BOOT::|processSynonymLine,removeKeyFromLine|
            BOOT::|pmPreparse,hn| BOOT::|new2OldLisp|
            BOOT::|processSynonymLine| BOOT::PRINT-PACKAGE
            BOOT::|printSynonyms| BOOT::INITIALIZE-PREPARSE
            BOOT::|clearParserMacro|
            BOOT::|dbScreenForDefaultFunctions| BOOT::S-PROCESS
            BOOT::|newHelpSpad2Cmd| BOOT::|dbChooseOperandName|
            BOOT::|zsystemDevelopmentSpad2Cmd| BOOT::|parseFromString|
            BOOT::|checkPmParse,fn| BOOT::|dbRead|
            BOOT::|string2SpadTree| BOOT::|checkPmParse| SYSTEM:PNAME
            BOOT::|htCopyProplist| BOOT::|pathnameTypeId|
            BOOT::|capitalize| BOOT::|htSayValue|
            BOOT::|clearCmdExcept| BOOT::|getSubstSigIfPossible|
            BOOT::|workfilesSpad2Cmd| BOOT::|isIntegerString|
            BOOT::|cd| BOOT::|dbGetExpandedOpAlist|
            BOOT::|dbAddDocTable| BOOT::|zsystemdevelopment|
            BOOT::|getConstructorForm| BOOT::|workfiles|
            BOOT::|originsInOrder| BOOT::|getInfoAlist|
            BOOT::|parentsOf| BOOT::|listOrVectorElementMode|
            BOOT::|zeroOneConvertAlist| BOOT::|dbInfoSig|
            BOOT::|numberize| BOOT::|hasNewInfoText|
            BOOT::|splitConTable| BOOT::|dbGetDocTable,gn|
            BOOT::|string2Integer| BOOT::|recordFrame|
            BOOT::|issueHTSaturn| BOOT::|kTestPred|
            BOOT::|segmentKeyedMsg| BOOT::|htpPageDescription|
            BOOT::|dbDocTable| BOOT::|saturnTran| BOOT::|bcUnixTable|
            BOOT::|mkTabularItem| BOOT::|printAsTeX|
            BOOT::|isAsharpFileName?| BOOT::|isMenuItemStyle?|
            BOOT::|saturnTranText| BOOT::|bcError|
            BOOT::|transOnlyOption| BOOT::|kPageContextMenu|
            BOOT::|bcString2WordList| BOOT::|unTab1|
            BOOT::|shortenForPrinting| BOOT::|getBpiNameIfTracedMap|
            BOOT::|recordAndPrintTest| BOOT::|mkTabularItem,fn|
            BOOT::|PullAndExecuteSpadSystemCommand| BOOT::|htNewPage|
            BOOT::|htpName| BOOT::|prTraceNames,fn|
            BOOT::|htMakePageSaturn| BOOT::|e02zafSolve,flam|
            BOOT::|isCapitalWord| BOOT::|zagSuper| BOOT::|height|
            BOOT::|zagSub| BOOT::|inputPrompt|
            BOOT::|flattenOperationAlist| BOOT::|variableNumber|
            BOOT::|spadTrace,g| BOOT::|mkPredList,fn|
            BOOT::|isTraceGensym| BOOT::|htPopSaturn|
            BOOT::|htMakePageStandard| BOOT::|undo| BOOT::|dbKind|
            BOOT::|undoCount| BOOT::|stringer| BOOT::|outputTranIf|
            BOOT::|htInitPageNoHeading| BOOT::|undoLocalModemapHack|
            BOOT::|saturnHasExamplePage| BOOT::|reportUndo| BOOT::|iht|
            BOOT::|bcIssueHt| BOOT::|bcConform1| BOOT::|keyp|
            BOOT::|bcConform1,hd| BOOT::|binomialWidth|
            BOOT::|htSaySourceFile| BOOT::|basicStringize|
            BOOT::|mapStringize| BOOT::|binomialSuper|
            BOOT::|bcConform1,mapping|
            BOOT::|outputTranMatrix,outtranRow|
            BOOT::PLAIN-PRINT-FORMAT-STRING BOOT::|bcConform1,tuple|
            BOOT::|binomialSub| BOOT::|vConcatWidth| BOOTTRAN::BOOTTOCL
            BOOT::|bcConform1,tl| BOOT::|deMatrix| BOOT::TRANSLIST
            BOOT::|sumWidthA| BOOT::TRANSLATE BOOT::|htSayItalics|
            BOOT::|dbGetDocTable,hn| BOOT::|absym|
            BOOT::|dbEvalableConstructor?| BOOT::|getCallBack|
            BOOT::|texFormat1| BOOT::|unTab|
            BOOT::RETRANSLATE-DIRECTORY BOOT::|kPageContextMenuSaturn|
            BOOT::|maPrin| BOOT::RETRANSLATE-FILE-IF-NECESSARY
            BOOT::|saturnExampleLink| BOOT::|explainLinear|
            BOOT::RECOMPILE-ALL-LIBS BOOT::|htSayCold|
            BOOT::RECOMPILE-LIB-DIRECTORY
            BOOT::RECOMPILE-NRLIB-IF-NECESSARY BOOT::|writeSaturnTable|
            BOOT::|maprinRows| BOOT::RECOMPILE-ALL-FILES
            BOOT::|writeSaturn| BOOT::|maprinChk|
            BOOT::|writeSaturnPrint| BOOT::RECOMPILE-ALL-ALGEBRA-FILES
            BOOT::|bcConform1,say| BOOT::|escapeSpecialIds|
            BOOT::|vConcatSub| BOOT::LOAD-DIRECTORY
            BOOT::|postDoubleSharp| BOOT::|sumoverlist|
            BOOT::|htProcessBcStrings| BOOT::|matSuperList|
            BOOT::|superSubWidth| BOOT::CHAPTER-NAME BOOT::|isQuotient|
            BOOT::|matSubList| BOOT::|superSubSuper|
            BOOT::|isRationalNumber| BOOT::|matLSum|
            BOOT::|superSubSub| BOOT::BLANKCHARP
            BOOT::SPADTAGS-FROM-FILE BOOT::|matLSum2|
            BOOT::OUR-WRITE-DATE BOOT::LIFT-NRLIB-NAME
            BOOT::RECOMPILE-FILE-IF-NECESSARY BOOT::|suScWidth|
            BOOT::|bcLinearSolveMatrixInhomo,f| BOOT::LIBCHECK
            BOOT::|bcLinearExtractMatrix| BOOT::|printMap|
            BOOT::|isInitialMap| BOOT::SPAD-CLEAR-INPUT
            BOOT::|bcString2HyString|
            BOOT::|NeedAtLeastOneFunctionInThisFile| BOOT::|pfSequence|
            BOOT::|npPileBracketed| BOOT::|npAnyNo| BOOT::|bcOptional|
            VMLISP::EQUABLE VMLISP::*LAM BOOT::|subSub| VMLISP::RCQEXP
            BOOT::|flattenOps| BOOT::|npInfGeneric| BOOT::|slashWidth|
            BOOT::|slashSuper| VMLISP::COMPILE1 BOOT::|slashSub|
            BOOT::|pfPile| BOOT::|npParened| BOOT::BVEC-COPY
            BOOT::|letWidth| VMLISP::FLAT-BV-LIST BOOT::|sortCarString|
            BOOT::|pfAppend| VMLISP::PLIST2ALIST BOOT::|pfFix|
            BOOT::|outputConstructTran| BOOT::|pfTyping|
            BOOT::|outputTranSEQ| BOOT::|outputTranRepeat|
            BOOT::|outputTranReduce| BOOT::|outputTranCollect|
            BOOT::|outputMapTran| BOOT::|npSemiListing|
            BOOT::|pfExport| BOOT::|pfLocal|
            BOOT::|optSEQ,getRidOfTemps| BOOT::|optSPADCALL|
            BOOT::|pfFree| BOOT::|optXLAMCond| BOOT::|optCONDtail|
            BOOT::|optPredicateIfTrue| BOOT::|optCons| BOOT::|optSEQ|
            BOOT::|pfBreak| BOOT::|optSEQ,tryToRemoveSEQ|
            BOOT::|optSEQ,SEQToCOND| BOOT::|optimize,opt|
            BOOT::|optCond| BOOT::|pfReturnNoName| BOOT::|optMkRecord|
            BOOT::|npListAndRecover| BOOT::|optCatch| BOOT::|npTuple|
            BOOT::|pf0SequenceArgs| BOOT::|compileTimeBindingOf|
            BOOT::|optimizeFunctionDef,removeTopLevelCatch|
            BOOT::|optEQ| BOOT::|optLESSP| BOOT::|pfIterate|
            BOOT::|opt-| BOOT::|optQSMINUS| BOOT::|pfLoop1|
            BOOT::|optMINUS| BOOT::|optSuchthat| BOOT::|optRECORDCOPY|
            BOOT::|optSETRECORDELT| BOOT::|npParse|
            BOOT::|timedEVALFUN| BOOT::|pfDocument|
            BOOT::|updateTimedName| BOOT::|pfTweakIf|
            BOOT::|timedOptimization| BOOT::|pfCheckItOut|
            BOOT::|timedAlgebraEvaluation| BOOT::|pushTimedName|
            BOOT::|significantStat| BOOT::|printNamedStats|
            BOOT::|htpDestroyPage| BOOT::|splitIntoBlocksOf200|
            BOOT::|incIgen| BOOT::|e02dafSolve,flam|
            BOOT::|e04nafSolve,fe| BOOT::|str2Tex|
            BOOT::|e04nafSolve,fd| BOOT::|wrap| BOOT::|e04nafSolve,fc|
            BOOT::|e04ycfSolve,fa| BOOT::|str2Outform|
            BOOT::|parse2Outform| BOOT::|e04nafSolve,fj|
            BOOT::|e04nafSolve,fg| BOOT::|e04dgfSolve,fb|
            BOOT::|e04mbfSolve,fg| BOOT::|evalLoopIter|
            BOOT::|formatUnabbreviatedTuple| BOOT::|e04mbfSolve,fe|
            BOOT::|length2?| BOOT::|Identity| BOOT::|upADEF|
            BOOT::|bool| BOOT::|e04mbfSolve,fd| BOOT::|orderList|
            BOOT::|e04mbfSolve,fc| BOOT::|upLoopIters| BOOT::NMSORT
            BOOT::|pr| BOOT::|e04fdfSolve,fb| BOOT::|interpIter|
            BOOT::|functionp| BOOT::|quoteCatOp| BOOT::|e04fdfSolve,fa|
            BOOT::|isLetter| BOOT::|mkNestedElts| BOOT::|charRangeTest|
            BOOT::|instantiate| BOOT::|isUpperCaseLetter|
            BOOT::|e04gcfSolve,fb| BOOT::|flattenSexpr|
            BOOT::|e04gcfSolve,fa| BOOT::|isStreamCollect|
            BOOT::|removeZeroOneDestructively| BOOT::|StringToCompStr|
            BOOT::|boolODDP| BOOT::|rightTrim|
            BOOT::|dropLeadingBlanks| BOOT::|getDomainByteVector|
            BOOT::|interpOnlyCOLLECT| BOOT::|e04jafSolve,fc|
            BOOT::|upCOLLECT| BOOT::|upAlgExtension|
            BOOT::|e04jafSolve,fb| BOOT::|eq2AlgExtension|
            BOOT::|e04jafSolve,fa| BOOT::|clearCmdParts|
            BOOT::|upCOLLECT0| BOOT::|loadLib| BOOT::|upCOLLECT1|
            BOOT::|upand| BOOT::|upDeclare| BOOT:|pp|
            BOOT::|f01rdfSolve,fz| BOOT::|mkZipCode| BOOT:ATOM2STRING
            BOOT::|orderCatAnc| BOOT::|f01mcfSolve,g|
            BOOT::|isOkInterpMode| BOOT::|f01mcfSolve,f|
            BOOT::|mkAndApplyPredicates| BOOT:MATCH-STRING
            BOOT::|upCOERCE| BOOT::|upStreamIters| BOOT::|upconstruct|
            BOOT::|upTARGET| BOOT::|falseFun| BOOT::|upLET|
            BOOT::|closeOldAxiomFunctor| BOOT::|f01refSolve,fz|
            BOOT::|upLETWithPatternOnLhs| BOOT::|isTupleForm|
            BOOT::|f01qefSolve,fz| BOOT::|e02zafSolve,fxy|
            BOOT::|shoeStrings| BOOT::|removeConstruct| BOOT:|break|
            BOOT::|shoeIntern| BOOT::|isLocalPred|
            BOOT::|shoeInternFile| BOOT::|upequation|
            BOOT::|SpadInterpretFile| BOOT::|intInterpretPform|
            BOOT::|altSeteltable| BOOT::|packageTran|
            BOOT::|isHomogeneous| BOOT::|zeroOneTran|
            BOOT::|intProcessSynonyms| BOOT::|upbreak|
            BOOT::|f01brfSolve,f| BOOT::|intnplisp| BOOT::|upDollar|
            BOOT::|nplisp| BOOT::|setCurrentLine|
            BOOT::|f01qdfSolve,fz| BOOT::|copyHack| BOOT::|copyHack,fn|
            BOOT:ADJCURMAXINDEX BOOT::|upTuple| BOOT::|ncloopParse|
            BOOT::|ncloopIncFileName| BOOT::|phBegin|
            BOOT::|ncloopEscaped| BOOT::|upiterate| BOOT::|upIF|
            BOOT::|upisnt| BOOT::|upisAndIsnt| BOOT::|phInterpret|
            BOOT::|isHomogeneousArgs| BOOT:LASTATOM BOOT::|uphas|
            BOOT::|phMacro| BOOT::|macroExpanded| BOOT::|upis|
            BOOT::|ncConversationPhase,wrapup| BOOT:CONSOLEINPUTP
            BOOT::|upwhere| BOOT::|serverReadLine|
            BOOT::|ncloopPrintLines| BOOT::|mkLineList|
            BOOT::|nonBlank| BOOT:|MakeSymbol| BOOT::|intloopEchoParse|
            BOOT::|incBiteOff| BOOT::|SkipEnd?| BOOT::|incFileName|
            BOOT::|Else?| BOOT::|Elseif?| BOOT::|If?|
            BOOT::|inclmsgNoSuchFile| BOOT::|inclmsgPrematureFin|
            BOOT::|incFileInput| BOOT::|Top?|
            BOOT::|inclmsgPrematureEOF| BOOT::|SkipPart?|
            BOOT::|KeepPart?| BOOT:COMP BOOT:GETGENSYM
            BOOT::|incNConsoles| BOOT::|Skipping?| BOOT::|incClassify|
            BOOT::EXPAND-TABS BOOT::|incCommand?| BOOT::|incRenumber|
            BOOT::|incFile| BOOT::|incPos|
            BOOT:|initializeSetVariables| BOOT::|inclmsgSay|
            BOOT::|inclmsgConStill| BOOT::|incStringStream|
            BOOT::|inclmsgConActive| BOOT:NUMOFNODES FOAM::TYPE2INIT
            FOAM::FOAM-FUNCTION-INFO BOOT::|GetValue|
            BOOT::|hasToInfo| FOAM::INSERT-TYPES BOOT::|formatPred|
            BOOT::|chaseInferences,foo| BOOT::|liftCond|
            FOAM::FOAMPROGINFOSTRUCT-P BOOT::|formatInfo|
            BOOT:TOKEN-TYPE BOOT::|addInformation,info|
            BOOT:|updateSourceFiles| BOOT::|infoToHas| BOOT::|addInfo|
            BOOT::|formatPredParts| BOOT::|printInfo|
            BOOT::|linearFormat| BOOT::|formatOperationAlistEntry|
            BOOT::|formatIf| BOOT:MKQ BOOT::|linearFormatName|
            BOOT::|dollarPercentTran| BOOT::|string2Float|
            BOOT::|specialChar| BOOT:TOKEN-SYMBOL BOOT::|hashCode?|
            BOOT::|formatArgList| BOOT::|listOfPredOfTypePatternIds|
            BOOT::|script2String| BOOT::|form2Fence1|
            BOOT::|replaceGoGetSlot| BOOT::|constructorName|
            BOOT::|sayModemap| BOOT:ACTION BOOT::|opIsHasCat|
            BOOT::|isNewWorldDomain| BOOT::|formCollect2String|
            BOOT::|DNameToSExpr1| BOOT::|tuple2String|
            BOOT::|DNameFixEnum| BOOT::|formJoin2String| BOOT:ASSOCLEFT
            BOOT::|DNameToSExpr| BOOT:|sayALGEBRA|
            BOOT::|CompStrToString| BOOT::|record2String|
            FOAM-USER::|AXL-spitSInt| BOOT::|computedMode|
            BOOT::|formWrapId| BOOT::|getIProplist|
            BOOT::|isBinaryInfix| BOOT::|mkAtreeValueOf|
            BOOT::|collectDefTypesAndPreds| BOOT::|formatSignature|
            BOOT::|freeOfSharpVars| BOOT::|unVectorize|
            BOOT::|formatSignature0| BOOT::|isInternalFunctionName|
            BOOT::|objEnv| BOOT:NREVERSE0 BOOT::|formatMapping|
            BOOT::|canRemoveIsDomain?| BOOT:|sayFORTRAN|
            BOOT::|formIterator2String| BOOT:|IS_#GENVAR|
            BOOT::|removeIsDomains| BOOT:LISTOFATOMS
            BOOT::|formatAttribute| BOOT::|formTuple2String|
            BOOT::|numOfSpadArguments| BOOT::|args2Tuple|
            BOOT::|blankList| BOOT::|removeBodyFromEnv|
            BOOT::|form2StringWithWhere| BOOT::|reportOpSymbol|
            BOOT::|apropos| BOOT::|formatModemap,fn|
            BOOT::|listOfVariables| BOOT::|isFreeVar|
            BOOT::|isLocalVar| BOOT::|expr2String|
            BOOT::|isInternalMapName| BOOT::|atom2String|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T *) *) VMLISP:MAKE-APPENDSTREAM
            VMLISP:MAKE-INSTREAM VMLISP:MAKE-OUTSTREAM
            VMLISP:COMPILE-LIB-FILE BOOT:|OsRunProgram|
            BOOT:|OsRunProgramToStream| BOOT::ASHARP
            FOAM:COMPILE-AS-FILE BOOT:|Prompt| BOOT:|sayBrightlyNT|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T T) (VALUES T T)) BOOT::|getScriptName|
            FOAM:AXIOMXL-GLOBAL-NAME BOOT::|spadTraceAlias|)) 
(PROCLAIM '(FTYPE (FUNCTION (T T *) (VALUES T T)) VMLISP:MDEF)) 
(PROCLAIM '(FTYPE (FUNCTION (T *) STRING) VMLISP:MAKE-FULL-CVEC)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T) *) BOOT::|bcInputMatrixByFormula|
            BOOT::|bcInputExplicitMatrix| BOOT::|htStringPad|
            BOOT::|evalAndRwriteLispForm| BOOT::|mkAtreeWithSrcPos|
            BOOT::|rwriteLispForm| BOOT::COMPILE-DEFUN BOOT::|doIt|
            BOOT::BPIUNTRACE VMLISP:QUOTIENT BOOT::|print|
            BOOT::|compilerDoitWithScreenedLisplib|
            BOOT::|compilerDoit| BOOT::MONITOR-PRINVALUE BOOT::/TRACE-2
            VMLISP:|LAM,FILEACTQ| BOOT::|hasFormalMapVariable|
            BOOT::|ScanOrPairVec| VMLISP:SUFFIX BOOT::PRINMATHOR0
            BOOT::|spadTrace| BOOT::|output| BOOT::|e01bffDefaultSolve|
            BOOT::|e01safDefaultSolve| BOOT::|popUpNamedHTPage|
            BOOT::|e01dafDefaultSolve| BOOT::|replaceNamedHTPage|
            BOOT::|e02bafDefaultSolve| BOOT::|e02bdfDefaultSolve|
            BOOT::|e02defDefaultSolve| BOOT::|sockSendFloat|
            BOOT::ERASE
            BOOT::|sayErrorly| BOOT::|saturnSayErrorly| BOOT::|set1|
            BOOT::|displaySetOptionInformation| BOOT::|mkGrepPattern|
            BOOT::|showDoc| BOOT::|genSearchSayJump| BOOT::|oPageFrom|
            BOOT::|showConstruct| BOOT::|htCommandToInputLine,fn|
            BOOT::|grepConstructorSearch| BOOT::|showNamedDoc|
            BOOT::|form2HtString,fnTail| BOOT::|xdrWrite|
            BOOT::|spleI1| BOOT::|readData,xdrRead1| BOOT::|xdrRead|
            BOOT::|sockSendSignal| BOOT::|htpLabelFilteredInputString|
            BOOT::|e01bgfDefaultSolve| BOOT::|e01befDefaultSolve|
            BOOT::|e01bafDefaultSolve| BOOT::|htGlossSearch|
            BOOT::|htSetSystemVariable| BOOT::|htSetSystemVariableKind|
            BOOT::|htSetNotAvailable| BOOT::|htShowLiteralsPage|
            BOOT::|htCheck| BOOT::|htShowIntegerPage|
            BOOT::|htShowFunctionPage| BOOT::|htSetFunCommandContinue|
            BOOT::|htKill| BOOT::|htFunctionSetLiteral|
            BOOT::|htShowSetPage| BOOT::ADDCLOSE BOOT::|htSetLiteral|
            BOOT:|LispCompileFileQuietlyToObject|
            BOOT::|findStringInFile| BOOT::|ppPair|
            BOOT::|getMinimalVarMode| BOOT::|checkAddSpaceSegments|
            BOOT::|checkAddIndented| BOOT::|alistSize,count|
            BOOT::|dbConformGen1| BOOT::|pickitForm|
            BOOT::|koaPageFilterByCategory1| VMLISP::COPY-FILE
            VMLISP::COPY-LIB-DIRECTORY BOOT::|c06ebfDefaultSolve|
            BOOT::|c06gsfDefaultSolve| BOOT::|c06eafDefaultSolve|
            BOOT::|c06gbfDefaultSolve| BOOT::|c06gqfDefaultSolve|
            BOOT::|c06ecfDefaultSolve| BOOT::|c06gcfDefaultSolve|
            BOOT::|d01gafDefaultSolve| BOOT::|spadcall2|
            BOOT::|sublisV| BOOT::|sublisV,suba| BOOT::|fortError|
            BOOT::|f04adfDefaultSolve| BOOT::|f04arfDefaultSolve|
            BOOT::|koPageFromKKPage| BOOT::|kArgPage| BOOT::|npsystem|
            BOOT::|f04asfDefaultSolve|
            BOOT::|handleParsedSystemCommands|
            BOOT::|handleTokensizeSystemCommands|
            BOOT::|f07fdfDefaultSolve| BOOT::|tokenSystemCommand|
            BOOT::|reportOpsFromLisplib1| BOOT::|handleNoParseCommands|
            BOOT::|f07aefDefaultSolve| BOOT::|f07fefDefaultSolve|
            BOOT::|f07adfDefaultSolve| BOOT::|addPatchesToLongLines|
            BOOT::|kArgumentCheck| BOOT::COERCE-FAILURE-MSG
            BOOT::|kxPage| BOOT::|kcnPage| BOOT::SAYBRIGHTLYNT1
            BOOT::|kcuPage| BOOT::|ksPage| BOOT::|conOpPage|
            BOOT::|kcdoPage| BOOT::|kcdePage| BOOT::|kcdPage|
            BOOT::|kccPage| BOOT::|patternCheck,subWild|
            BOOT::|kcaPage| BOOT::|kcpPage| BOOT::|htDoneButton|
            BOOT::|sockSendInt| BOOT::|kePage| BOOT::|sockSendString|
            BOOT::|koaPageFilterByName| BOOT::|koaPageFilterByCategory|
            BOOT::|koPageAux1| BOOT::|kcPage| BOOT::|getmode|
            BOOT::|docSearch1| BOOT::|grepSearchQuery|
            BOOT::|repeatSearch| BOOT::|reportOpsFromLisplib0|
            BOOT::|reportOperations| BOOT::|generalSearchDo|
            BOOT::|grepSearchJump| BOOT::|mkDetailedGrepPattern,conc|
            BOOT::|kiPage| BOOT::|errorPage|
            BOOT::|dbShowConsKindsFilter| BOOT::|koPage|
            BOOT::|dbInfoChoose| BOOT::|kciPage|
            BOOT::|dbInfoChooseSingle| BOOT::|dbSort| BOOT::|msgText|
            BOOT::|bcSeriesByFormula| BOOT::|bcRealLimitGen1|
            BOOT::|bcSeriesExpansion| BOOT::|ncloopInclude|
            BOOT::|bcComplexLimit| BOOT::|bcRealLimit|
            BOOT::|htFilterPage| BOOT::|bcPuiseuxSeries|
            BOOT::KCL-OS-RUN-PROGRAM-TO-STREAM BOOT::|bcLaurentSeries|
            BOOT::KCL-OS-RUN-PROGRAM BOOT::|bcTaylorSeries|
            BOOT::|bcLinearSolveMatrix| BOOT::|bcMakeEquations|
            BOOT::|bcMakeLinearEquations| BOOT::|bcLinearSolveEqns|
            BOOT::|bcSolveSingle| BOOT::|bcInputEquations| BOOT::FC
            BOOT::|bcSystemSolve| BOOT::|bcSolveEquationsNumerically|
            BOOT::|bcSolveEquations| BOOT::|bcLinearSolve|
            BOOT::|bcLinearMatrixGen|
            BOOT::|bcLinearSolveMatrixInhomoGen|
            BOOT::|bcLinearSolveMatrixInhomo|
            BOOT::|bcLinearSolveMatrixHomo| BOOT::|finalExactRequest|
            BOOT::|printMap1| BOOT::|htMkName|
            BOOT::|makeLongSpaceString| BOOT::|makeLongTimeString|
            BOOT::|nrtEval| BOOT::|f01mcfDefaultSolve|
            BOOT::|f01rcfDefaultSolve| BOOT::|ncloopCommand|
            BOOT::|ncloopInclude1| BOOT::|ncConversationPhase|
            BOOT:DEFSTREAM BOOT::|inclHandleBug| BOOT::|evalSlotDomain|
            BOOT::|ncEltQ| BOOT::|formArguments2String,fn|)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T *) T) BOOT:|sayBrightly| BOOT:BLANKS
            BOOT:MATCH-NEXT-TOKEN BOOT::|desiredMsg|
            BOOT:|sayBrightlyI| BOOT:MATCH-CURRENT-TOKEN
            VMLISP:RDEFIOSTREAM VMLISP:CATCHALL VMLISP:TAB
            VMLISP:|F,PRINT-ONE| VMLISP:VMPRINT BOOT::FINDTAG
            VMLISP:MAKE-HASHTABLE VMLISP:MAKE-FILENAME VMLISP:MACERR
            VMLISP:PRETTYPRINT BOOT::|pfExpression| BOOT::|pfSymbol|
            VMLISP:|LAM,EVALANDFILEACTQ| VMLISP:PRETTYPRIN0
            BOOT::|pfSymb| VMLISP::MAKE-INPUT-FILENAME
            BOOT:|LispReadFromString| BOOT::MONITOR-ADD BOOT::|cpCms|
            VMLISP::MAKE-FULL-NAMESTRING BOOT:|PrettyPrint|
            BOOT:|PlainPrintOn| BOOT:|WriteLispExpr| BOOT:|WriteLine|
            BOOT:|WriteString| BOOT:|ReadLineIntoString|
            BOOT:|ReadBytesIntoVector| BOOT:|Pathname|
            BOOT:|FullVector| BOOT:|FullBvec| BOOT:|FullString|
            BOOT::PRINT-NEW-LINE BOOT::PRINT-FULL
            BOOT::GET-BOOT-IDENTIFIER-TOKEN BOOT::COMPSPADFILES)) 
(PROCLAIM
    '(FTYPE (FUNCTION (T T) T) BOOT::|mkAliasList,fn| BOOT:PREDECESSOR
            BOOT::|depthOfRecursion| BOOT::|formatJoinKey|
            BOOT::|putBodyInEnv| BOOT::|mapDefsWithCorrectArgCount|
            BOOT::|sayModemapWithNumber| BOOT::|addDefaults| BOOT:NLIST
            BOOT::|formatOperation| BOOT::|get1defaultOp|
            BOOT::|compileBody| BOOT::|makeLocalModemap| BOOT:NSTRCONC
            BOOT::|saveDependentMapInfo| BOOT:GETRULEFUNLISTS
            BOOT::|axFormatDecl| BOOT::|mkMapAlias| BOOT::|readData|
            BOOT::|axFormatConstantOp| BOOT::|axFormatOpSig|
            BOOT::|mkFormalArg| BOOT::|writeData| BOOT:POINT
            BOOT::|mkValCheck| BOOT::|mkValueCheck| BOOT::|isPointer?|
            BOOT::|wt| BOOT::|dqAppend| BOOT::|makePattern|
            BOOT::|makeAxFile| BOOT::|clearDependencies|
            BOOT::|getEqualSublis,fn| BOOT::|sourceFilesToAxFile|
            BOOT::|getLocalVars| BOOT::|simplifyMapPattern|
            BOOT::|getMapBody| BOOT:GETTAIL BOOT::|htpLabelInputString|
            BOOT::|htpLabelSpadValue| BOOT::|putDependencies|
            BOOT::STACK-PUSH BOOT:COMPARE BOOT::|htMakeDoneButton|
            BOOT::|putDependencies,removeObsoleteDependencies|
            BOOT::|makeNewDependencies| BOOT::|PARSE-Operation|
            BOOT::|htInitPage| BOOT::|notCalled| BOOT::|htpProperty|
            BOOT::|containsOp| BOOT::|makeRuleForm|
            BOOT::|nonRecursivePart| BOOT::|outputFormat|
            BOOT::|sayDroppingFunctions| BOOT::|nonRecursivePart1|
            BOOT::|expandRecursiveBody| BOOT::|addDefMap|
            BOOT::|e04nafSolve,fh| BOOT:FLAG BOOT::|ifCond|
            BOOT::|incCommandTail| BOOT::|incTrunc| BOOT::|dollarTran|
            BOOT:PAIR BOOT::CHAR-EQ BOOT::|PARSE-rightBindingPowerOf|
            BOOT::|e04nafSolve,fi| BOOT:SUBLISNQ
            BOOT::|writeInputLines| BOOT::|rempropI| BOOT:DELASC
            BOOT::|showInput| BOOT::|showInOut| BOOT::SPADRREAD
            BOOT:LASSOC BOOT::|ScanOrPairVec,ScanOrInner| BOOT::|getI|
            BOOT::|mergeSignatureAndLocalVarAlists| BOOT::CHAR-NE
            BOOT:S+ BOOT::|convertOpAlist2compilerInfo,formatSig|
            BOOT::|getLisplibNoCache| BOOT::|getLisplib|
            BOOT::|PARSE-leftBindingPowerOf| BOOT:MAKE-PARSE-FUNCTION
            BOOT::|spadPrint| BOOT::|getSlotFromCategoryForm|
            BOOT::|systemDependentMkAutoload| BOOT:MKPF
            BOOT::|mkAutoLoad| BOOT:STRM BOOT::|wordFrom|
            FOAM::|magicEq1| BOOT::|throwKeyedMsg1|
            BOOT::|saturnThrowKeyedMsg| BOOT::|center|
            BOOT::|substituteCategoryArguments|
            BOOT::|isDomainConstructorForm| BOOT::|keyedSystemError1|
            BOOT::|orderByDependency| BOOT::|saturnKeyedSystemError|
            BOOT::|getFunctorOpsAndAtts| BOOT::|breakKeyedMsg|
            BOOT::|fastSearchCurrentEnv| BOOT::|putMode|
            BOOT::|splitListOn| BOOT::|putFlag|
            BOOT::|mkAtreeNodeWithSrcPos| BOOT::|getMsgCatAttr|
            BOOT::|DomainSubstitutionFunction|
            BOOT::|transferSrcPosInfo| BOOT::|isNestedInstantiation|
            BOOT::|DomainSubstitutionFunction,Subst|
            BOOT::|mkAtree1WithSrcPos| BOOT::|wrapDomainSub|
            BOOT::|listInitialSegment| BOOT::|compCategoryItem|
            BOOT::|writeLib|
            BOOT::|makeFunctorArgumentParameters,findExtrasP|
            BOOT::|loadLibIfNecessary| BOOT::|rep|
            BOOT::|collectDefTypesAndPreds,addPred|
            BOOT::|setMsgPrefix| BOOT::|setMsgCatlessAttr|
            BOOT::|getSignatureFromMode|
            BOOT::|makeFunctorArgumentParameters,findExtras|
            BOOT::|makeFunctorArgumentParameters,findExtras1|
            BOOT::|autoLoad| BOOT::|isMacro| BOOT::|readLib|
            BOOT::|getValueFromEnvironment|
            BOOT::|unloadOneConstructor|
            BOOT::|compileCases,FindNamesFor| BOOT::|asTupleNewCode|
            BOOT::|macroExpandList| BOOT::|setMsgForcedAttrList|
            BOOT::|macSubstituteId| BOOT::|atree2Tree1|
            BOOT::|compileCases,isEltArgumentIn|
            BOOT::|makeFunctorArgumentParameters,augmentSig|
            BOOT::|mkAtree3,fn| BOOT::|macroExpandInPlace|
            BOOT::|getErFromDbL| BOOT::|compJoin,getParms|
            BOOT::|pfMapParts| BOOT::|erMsgCompare|
            BOOT::|compareposns| BOOT::|pfCopyWithPos|
            BOOT::|mkCategoryPackage,fn| BOOT::|getArgumentMode|
            BOOT:REMFLAG BOOT::|listDecideHowMuch|
            BOOT::|throwEvalTypeMsg| BOOT::|splitEncodedFunctionName|
            BOOT:QLASSQ BOOT::|decideHowMuch| BOOT::|getArgValue1|
            BOOT::|setMsgText| BOOT::|setMsgUnforcedAttrList|
            BOOT::|genDomainViewList0| BOOT::|macLambda,mac|
            BOOT::|macWhere,mac|
            BOOT::|makeFunctorArgumentParameters,fn|
            BOOT::|canCacheLocalDomain|
            BOOT::|makeCategoryPredicates,fn|
            BOOT::|makeCategoryPredicates,fnl|
            BOOT::|getArgValueOrThrow| BOOT::|mac0SubstituteOuter|
            BOOT::|insertPos| BOOT::|macLambdaParameterHandling|
            BOOT::|genDomainViewName| BOOT::|isKeyQualityP|
            BOOT::|queueUpErrors| BOOT::|thisPosIsEqual|
            BOOT::|getOpArgTypes1| BOOT::|redundant|
            BOOT::|argCouldBelongToSubdomain| BOOT::|thisPosIsLess|
            BOOT::APPEND-N BOOT::|putFTText| BOOT::CONS-N
            BOOT::|getModemap| BOOT::|sameMsg?| BOOT::EVAL-DEFUN
            BOOT::|mkOpVec| BOOT::|resolveTCat|
            BOOT::PRINT-AND-EVAL-DEFUN BOOT::|AssocBarGensym|
            BOOT::|FromTo| BOOT::|compareMode2Arg|
            BOOT::|c02affSolve,f| BOOT::|subCopy|
            BOOT::|getOpArgTypes,f| BOOT::|isTowerWithSubdomain|
            BOOT::|addEmptyCapsuleIfNecessary| BOOT::|constructM|
            BOOT:|delete| BOOT::|c02agfSolve,f| BOOT::|bootStrapError|
            BOOT::|getOpArgTypes| BOOT::|dqAddAppend| BOOT::|tracelet|
            BOOT::/UNTRACE-2 BOOT:|rassoc| BOOT::|resolveTM1|
            BOOT::|matchMmSigTar| BOOT::/UNTRACE-1 BOOT::|deepSubCopy|
            BOOT::|CONTAINEDisDomain| BOOT::|hasCatExpression|
            BOOT::PAIRTRACE BOOT::|spadUntrace| BOOT:LENGTHENVEC
            BOOT::|defaultTypeForCategory| BOOT::DEF-IT BOOT:|breaklet|
            BOOT::|mmCatComp| BOOT::|mergeSubs| BOOT::DEF-LET
            BOOT::|hasCaty1| BOOT:STRINGPAD BOOT::|mkObjWrap|
            BOOT:TRUNCLIST BOOT::|position1| BOOT::DEF-IS2
            BOOT::|defLET| BOOT::|defLETdcq|
            BOOT::|sortAndReorderDmpExponents| BOOT::WHDEF
            BOOT::|removeListElt| BOOT::|everyNth| BOOT::LET_ERROR
            BOOT::|defIS| BOOT::DEF-IS-REV VMLISP:SETDIFFERENCE
            BOOT::DEF-SELECT2 BOOT::DEF-SELECT1 BOOT::|addInformation|
            BOOT::|varIsOnlyVarInPoly| BOOT::|makeCategoryPredicates|
            BOOT::|compDefWhereClause,addSuchthat| VMLISP:DIVIDE
            BOOT::NOTEQUALLIBS VMLISP:GETL BOOT::|modemapPattern|
            BOOT::|removeVectorElt| BOOT::GETALIST
            BOOT::|buildDatabase| BOOT::|mathPrint1|
            BOOT::|getInverseEnvironment| BOOT::|getSuccessEnvironment|
            BOOT::|getSystemModemaps| BOOT::|insertWOC|
            BOOT::|getModemapsFromDatabase| BOOT::|removeCoreModemaps|
            BOOT::|SubstWhileDesizing| BOOT::|resolveTTUnion|
            BOOT::|resolveTTEq| BOOT::|rightBindingPowerOf|
            BOOT::/GETOPTION BOOT::|resolveTTCC|
            BOOT::|leftBindingPowerOf| BOOT::|stackSemanticError|
            BOOT::/GETTRACEOPTIONS BOOT::|resolveTTRed|
            BOOT::/TRACELET-PRINT BOOT::|resolveTTSpecial|
            BOOT::MONITOR-PRINT BOOT::|compareTT| BOOT::|opWidth|
            BOOT::|isConstantId| BOOT::|acceptableTypesToResolve|
            BOOT::|resolveTCat1| BOOT::|getConditionsForCategoryOnType|
            BOOT::|resolveTTAny| BOOT::|resolveTMOrCroak|
            BOOT::|outputMapTran0| BOOT::|spliceTypeListForEmptyMode|
            BOOT::MONITOR-EVALTRAN BOOT::|constructTowerT|
            BOOT::|throwKeyedMsg| BOOT::|canCoerceExplicit2Mapping|
            BOOT::|term1RWall| BOOT::|absolutelyCannotCoerce|
            BOOT::|rassocSub| BOOT::|coerceOrConvertOrRetract|
            VMLISP:NCONC2 BOOT::|term1RW| BOOT::|coerceOrRetract|
            BOOT::|resolveTMTaggedUnion| BOOT::|canCoerceUnion|
            BOOT::|acceptableTypesToResolve1| BOOT::|canCoercePermute|
            BOOT::|computeTTTranspositions| BOOT::|resolveTM2|
            BOOT::|newCanCoerceCommute| BOOT::|coerceIntCommute|
            BOOT::|resolveTMRed| BOOT::|coerceInt1| BOOT::|pmatch|
            BOOT::/TRACE-1 BOOT::|resolveTMEq| BOOT::|getUnionMode|
            BOOT::|resolveTMEq1| BOOT::|isUnionMode|
            BOOT::|coerceInt2Union| BOOT::|resolveTMSpecial|
            BOOT::|coerceIntFromUnion| VMLISP:REMAINDER
            BOOT::|resolveTMRecord| BOOT::|resolveTMUnion|
            BOOT::|isFunction| BOOT::|coerceIntAlgebraicConstant|
            BOOT::|coerceIntTower| BOOT::|coerceRetract|
            BOOT::|compareTypeLists| BOOT::|modifyModeStack|
            BOOT::|replaceSymbols| BOOT::|coerceIntTableOrFunction|
            BOOT::|isDomainForm| BOOT::|coerceIntSpecial|
            BOOT::/TRACELET-2 BOOT::|SubstWhileDesizingList|
            BOOT::|coerceIntPermute| BOOT::|getProplist|
            BOOT::|coerceBranch2Union| BOOT::ASSOCIATER
            BOOT::/TRACELET-1 BOOT::|retractByFunction|
            BOOT::|constructT| BOOT::MONITOR-PRINARGS-1
            BOOT::|outputComp| VMLISP:GGREATERP BOOT::|isDomainInScope|
            BOOT::|canConvertByFunction| VMLISP:CGREATERP
            BOOT::|canCoerceLocal| BOOT::|maxSuperType|
            BOOT::|canCoerceTower| BOOT::/UPDATE-1 BOOT::|coerceInt0|
            BOOT::|objSetMode| VMLISP:SORTBY BOOT::MONITOR-GETVALUE
            VMLISP:|member| BOOT::MONITOR-EVALTRAN1
            BOOT::|coerceIntByMapInner| BOOT::|getConstantFromDomain|
            BOOT::|valueArgsEqual?| BOOT::|traceDomainConstructor|
            BOOT::|coerceIntByMap| BOOT::|equalZero|
            BOOT::|replaceLast| BOOT::|coerceIntTest| VMLISP:ADDOPTIONS
            BOOT::|isSubTowerOf| BOOT::|starstarcond| BOOT::|equalOne|
            VMLISP:|assoc| VMLISP:SETSIZE BOOT::|evalSharpOne|
            VMLISP:EFFACE BOOT::|canCoerceCommute|
            BOOT::|clearDependentMaps| BOOT::|constantInDomain?|
            VMLISP:EMBED BOOT::|translateMpVars2PVars|
            VMLISP:LEXGREATERP VMLISP:RPLPAIR
            BOOT::|addDmpLikeTermsAsTarget| VMLISP:HPUT*
            BOOT::|genMpFromDmpTerm| VMLISP:STRING2ID-N
            BOOT::|htMakeTemplates,substLabel| BOOT::|doDoitButton|
            VMLISP:$FINDFILE BOOT::|keyedMsgCompFailure| BOOT::|objNew|
            BOOT::|putValue| BOOT::|getAtree| BOOT::|putModeSet|
            VMLISP:$SHOWLINE VMLISP:RDROPITEMS BOOT::|bottomUpType|
            BOOT::|bottomUpIdentifier| BOOT::|transferPropsToNode|
            BOOT::|getArgValue| BOOT::|bottomUpCompilePredicate|
            BOOT::|bottomUpPredicate| BOOT::|putTarget|
            BOOT::|getMinimalVariableTower|
            BOOT::|computeTypeWithVariablesTarget|
            BOOT::|removeUnionsAtStart| BOOT::|pushDownOp?|
            BOOT::|e02gafSolve,fc| BOOT::|e02gafSolve,fr|
            BOOT::|sayIntelligentMessageAboutOpAvailability|
            BOOT::|getBasicMode0| BOOT::|mkObjCode|
            BOOT::|intCodeGenCOERCE| BOOT::|canCoerceByMap|
            BOOT::|canCoerceByFunction| BOOT::|isSubDomain|
            BOOT::|absolutelyCanCoerceByCheating|
            BOOT::|e04ucfSolve,fa| BOOT::|coerceCommuteTest|
            BOOT::|asyGetAbbrevFromComments,fn| BOOT::|asySplit|
            BOOT::|asyWrap| BOOT::GETDATABASE
            BOOT::|asyAbbreviation,chk| BOOT::|asyTypeJoinPart|
            BOOT::|setVector4part3| BOOT::|sublisProp|
            BOOT::|setVector12,freeof| BOOT::|setVector4Onecat,form|
            BOOT::|asyDisplay| BOOT::ERROR-FORMAT
            BOOT::|asyAbbreviation| BOOT::|asyCattranConstructors|
            BOOT::|DomainPrint| BOOT::|makeSF| BOOT::|asySimpPred|
            BOOT::|setVector0| BOOT::|setVector3| BOOT::DIVIDE2
            BOOT::QUOTIENT2 BOOT::|htpSetName| BOOT::|sort|
            BOOT::|defLET2| BOOT::|defLetForm| BOOT::|asyMapping|
            BOOT::|defIS1| BOOT::|asySig| BOOT::|defISReverse|
            BOOT::|addCARorCDR| BOOT::|defLET1|
            BOOT::|asyExportAlist,fn| BOOT::|displayDatabase,fn|
            BOOT::|quickAnd| BOOT::|asyCattranSig| BOOT::|asySigTarget|
            BOOT::|asyMkSignature| BOOT::|asCategoryParts,build|
            BOOT::/COMPINTERP BOOT::|unabbrevRecordComponent|
            BOOT::|unabbrev1| BOOT::|makeByteWordVec2|
            BOOT::|condAbbrev| BOOT::|unabbrevUnionComponent|
            BOOT::|constructorNameConflict| BOOT::SPAD-PRINTTIME
            BOOT::|htpLabelType| BOOT::|errorSupervisor|
            BOOT::|sayErrorly1| BOOT::INTEGER-BIT BOOT::|chebeval|
            BOOT::|rPsi| BOOT::|cpsireflect| BOOT::|cPsi|
            BOOT::|BesselJRecur| BOOT::|substFromAlist|
            BOOT::|BesselJAsymptOrder| BOOT::|BesselJAsympt|
            BOOT::|PsiXotic| BOOT::|f01| BOOT::|brutef01|
            BOOT::RBESSELJ BOOT::CPSI BOOT::RPSI BOOT::CHYPER0F1
            BOOT::CBESSELI BOOT::RBESSELI BOOT::CBESSELJ
            BOOT::|formatLazyDomainForm| BOOT::|formatLazyDomain|
            BOOT::|getDomainSigs1| BOOT::|showDomainsOp1|
            BOOT::|devaluateSlotDomain| BOOT::|getDomainRefName|
            BOOT::|andDnf| BOOT::|ordUnion| BOOT::|coafAndDnf|
            BOOT::|orDel| BOOT::|orDnf| BOOT::|dnfContains,fn|
            BOOT::|andReduce| BOOT::|simpBoolGiven| BOOT::|dnfContains|
            BOOT::|coafAndCoaf| BOOT::|ordIntersection|
            BOOT::|ordSetDiff| BOOT::|coafOrDnf| BOOT::|predCircular|
            BOOT::|clearAllSlams,fn| BOOT::|assocCircular|
            BOOT::|recurrenceError| BOOT::|countCircularAlist|
            BOOT::|displaySetVariableSettings| BOOT::|sayCacheCount|
            BOOT::|chebstareval| BOOT::|BesselIAsymptOrder|
            BOOT::|horner| BOOT::|BesselKAsymptOrder| BOOT::|cbeta|
            BOOT::|PsiAsymptotic| BOOT::|PsiEps| BOOT::|FloatError|
            BOOT::|cgammaG| BOOT::|besselIback| BOOT::|rPsiW|
            BOOT::|firstNonDelim| BOOT::|chebf01| BOOT::|BesselJ|
            BOOT::|BesselI| BOOT::|grepSplit| BOOT::|grepConstruct1|
            BOOT::|grepConstructDo| BOOT::|mkGrepPattern1,h|
            BOOT::|pfCoerceto| BOOT::|stripOffSegments|
            BOOT::|pfFromdom| BOOT::|pfRetractTo| BOOT::|pfRestrict|
            BOOT::|mkGrepPattern1,split| BOOT::|testInput2Output|
            BOOT::|hyperize| BOOT::|testPrin| BOOT::|grepCombine|
            BOOT::|subMatch| BOOT::|bcAbb| BOOT::|lfrinteger|
            BOOT::|getFortranType| BOOT::|wl| BOOT::|scanIgnoreLine|
            BOOT::|makeVector| BOOT::|htPred2English,fn| BOOT::|posend|
            BOOT::|functionAndJacobian,DF| BOOT::|isString?|
            BOOT::|bcOpTable| BOOT::|xdrOpen| BOOT::|scanExponent|
            BOOT::|scanCheckRadix| BOOT::|coerceUn2E|
            BOOT::|inFirstNotSecond| BOOT::|coerceVal2E|
            BOOT::|EnumPrint| BOOT::|scanInsert| VMLISP::WRAP
            BOOT::|RecordPrint| BOOT::|coerceRe2E|
            BOOT::|syIgnoredFromTo| BOOT::|sySpecificErrorHere|
            BOOT::|pfTree| BOOT::|makeList|
            BOOT::|setVector4Onecat,Supplementaries| BOOT::|pfSuch|
            BOOT::|compCategories1| BOOT::|pfParen| BOOT::|pfPretend|
            BOOT::|pfComDefinition| BOOT::|pfMLambda|
            BOOT::|resolvePatternVars| BOOT::|cons5|
            BOOT::|makeMissingFunctionEntry| BOOT::|pfHide|
            BOOT::|setVector5| BOOT::|d02kefSolve,fd|
            BOOT::|mkVectorWithDeferral| BOOT::|d02kefSolve,fe|
            BOOT::|d02gbfSolve,ff| BOOT::|pfBracketBar|
            BOOT::|d02gbfSolve,fg| BOOT::|pfIdPos| BOOT::|ProcessCond|
            BOOT::|DescendCodeAdd| BOOT::|LookUpSigSlots|
            BOOT::|DomainPrintSubst| BOOT::|d02gbfSolve,fc|
            BOOT::|partPessimise| BOOT::|d02gbfSolve,fd|
            BOOT::|pfBraceBar| BOOT::|sublisProp,inspect|
            BOOT::|pfTagged| BOOT::|HasCategory| BOOT::|d02gbfSolve,fa|
            BOOT::|HasSignature| BOOT::|d02gbfSolve,fb|
            BOOT::|HasAttribute| BOOT::|pfWDeclare|
            BOOT::|InvestigateConditions,Conds| BOOT::|pfBracket|
            BOOT::|pfDWhere| BOOT::|NewbFVectorCopy|
            BOOT::|DescendCodeVarAdd| BOOT::|getDomainView|
            BOOT::|pfBrace| BOOT::|d02gafSolve,fe|
            BOOT::|d02gafSolve,fc| BOOT::|pfOr| BOOT::|pfAnd|
            BOOT::|d03edfSolve,fb| BOOT::|pfTLam|
            BOOT::|stringChar2Integer| BOOT::|reshape|
            BOOT::|e01dafSolve,h| BOOT::|hashCombine|
            BOOT::|e01dafSolve,k| BOOT::|hashType| VMLISP:$REPLACE
            VMLISP:UNIONQ BOOT::|spadSysBranch|
            BOOT::|htSystemVariables,gn| BOOT::|postFlatten|
            BOOT::|gatherGlossLines| VMLISP:|intersection|
            BOOT::|postFlattenLeft| BOOT::|postTranSegment|
            VMLISP:DEFINE-FUNCTION BOOT::SEGMENT BOOT::|pfTyped|
            BOOT::|postScriptsForm| BOOT::|htCheckList|
            BOOT::|htSetvarDoneButton| BOOT::|htMakePathKey,fn|
            BOOT::|npLeftAssoc| VMLISP:SETDIFFERENCEQ
            BOOT::|htMarkTree| BOOT::|pfCollect| BOOT::|pfQualType|
            BOOT::|deltaContour| BOOT::ADD-PARENS-AND-SEMIS-TO-LINE
            BOOT::|getUniqueSignature| VMLISP:INTERSECTIONQ
            BOOT::|AMFCR,redefinedList| BOOT::|putDomainsInScope|
            BOOT::INITIAL-SUBSTRING BOOT::|compFormMatch,match|
            BOOT::STOREBLANKS BOOT::|compFormMatch| BOOT::ESCAPED
            BOOT::PARSEPILES BOOT::|addNewDomain| BOOT::|htDoNothing|
            BOOT::|AMFCR,redefined| BOOT::|domainMember|
            BOOT::|e04ycfSolve,fb| BOOT::MONITOR-WRITE
            BOOT::|htpSetDomainPvarSubstList| BOOT::|coerceByModemap|
            BOOT::|htpLabelFilter| BOOT::|profileDisplayOp|
            BOOT::|htpLabelSpadType| BOOT::|pfAssign|
            BOOT::|htpSetDomainVariableAlist| BOOT::|convertOrCroak|
            BOOT::|htpSetDomainConditions|
            BOOT::|intersectionEnvironment| BOOT::|pfRule|
            BOOT::|coerceExit| BOOT::|resolveTM|
            BOOT::|autoCoerceByModemap| BOOT::|coerceExtraHard|
            BOOT::|hasType| BOOT::|getConstructorMode|
            BOOT::|getConstructorFormOfMode| BOOT::|pfWhere|
            BOOT::|coerceHard| BOOT::|npRightAssoc|
            BOOT::|coerceSubset| BOOT::|reportCircularCacheStats|
            BOOT::|mkCircularCountAlist| BOOT::|pfPushMacroBody|
            BOOT::|pfMacro| BOOT::|coerceEasy| BOOT::|keyedSystemError|
            BOOT::|chaseInferences| BOOT::|say2PerLineWidth|
            BOOT::|getFormModemaps| BOOT::|prEnv,tran| BOOT::|qArg|
            BOOT::|npMissingMate| BOOT::|canFit2ndEntry|
            BOOT::|sayKeyedMsgLocal| BOOT::|mkUnion|
            BOOT::|printEnv,tran| BOOT::|listTruncate|
            BOOT::|newHasTest| BOOT::|makeCategoryForm|
            BOOT::ADDOPERATIONS BOOT::ASHARPMKAUTOLOADFUNCTION
            BOOT::|HGETandCount| BOOT::|consForHashLookup|
            BOOT::|sayKeyedMsgAsTeX| BOOT::|SymMemQ| BOOT::|addToSlam|
            BOOT::|throwPatternMsg| BOOT::DELDATABASE
            BOOT::|sayPatternMsg| BOOT::|getKeyedMsgInDb|
            BOOT::|lassocShift| BOOT::|htMakeTemplates|
            BOOT::|isKeyedMsgInDb| BOOT::|patternVarsOf1|
            BOOT::GETCONSTRUCTOR BOOT::|pfFromDom| BOOT::|symEqual|
            BOOT::|domainEqualList| BOOT::SET-LIB-FILE-GETTER
            BOOT::|pfApplication| BOOT::|rightJustifyString|
            BOOT::|remHashEntriesWith0Count,fn|
            BOOT::|globalHashtableStats| BOOT::|lassocShiftQ|
            BOOT::|pfWDec| BOOT::|pileForest| BOOT::|canCoerce;|
            BOOT::|pileForest1| BOOT::|canCoerce1| BOOT::DAASENAME
            BOOT::|pileTree| BOOT::|eqpileTree| BOOT::|pileCtree|
            BOOT::|resolveTT;| BOOT::WRAPDOMARGS BOOT::|evalCategory|
            BOOT::|replaceSharps| BOOT::|ofCategory|
            BOOT::|canCoerceFrom;| BOOT::|canCoerceFrom0|
            BOOT::|isEqualOrSubDomain| BOOT::|hasCorrectTarget|
            BOOT::MAKE-DATABASES BOOT::|resolveTT1|
            BOOT::|applyWithOutputToString| BOOT::|isDomainSubst,fn|
            BOOT::|isDomainSubst,findSub| BOOT::|insertModemap|
            BOOT::|makeBigFloat| BOOT::REDUCTION-PRINT
            BOOT::|mkAlistOfExplicitCategoryOps,fn| BOOT::REMOVER
            BOOT::STACK-LOAD BOOT::ESCAPE-KEYWORDS BOOT::|allLASSOCs|
            BOOT::MAKE-PARSE-FUNCTION1 BOOT::|pairList|
            BOOT::INITIAL-SUBSTRING-P BOOT::|finalizeDocumentation,fn|
            BOOT::|formatOpSignature| BOOT::|sayKeyedMsg|
            BOOT::|transDocList| BOOT::MAKE-PARSE-FUNC-FLATTEN
            BOOT::|recordAttributeDocumentation|
            BOOT::|recordDocumentation|
            BOOT::|recordSignatureDocumentation| BOOT::|macroExpand|
            BOOT::|checkRewrite| BOOT::|checkComments|
            BOOT::|checkExtract| BOOT::|checkTrim|
            BOOT::|spadSysChoose| BOOT::|testError|
            BOOT::|spadtestValueHook| BOOT::|checkIsValidType,fn|
            BOOT::|transDoc| BOOT::|checkIndentedLines|
            BOOT::SAYBRIGHTLY1 BOOT::|pvarPredTran| BOOT::|mkAbbrev|
            BOOT::|addSuffix| BOOT::|processPackage,opt|
            BOOT::|subTree| BOOT::|mkRepititionAssoc,mkRepfun|
            BOOT::|setPackageLocals| BOOT::|UnionPrint|
            BOOT::|JoinInner| BOOT::|objNewWrap|
            BOOT::|coerceByFunction| BOOT::|MappingPrint|
            BOOT::|parseTypeEvaluateArgs| BOOT::|createEnum|
            BOOT::|parseTranCheckForRecord| BOOT::|installConstructor|
            BOOT::|AncestorP| BOOT::|SourceLevelSubset|
            BOOT::|JoinInner,AddPredicate| BOOT::|mkAnd| BOOT::|mkOr|
            BOOT::|SigListUnion| BOOT::|PredImplies|
            BOOT::|DescendantP| BOOT::|mkOr2| BOOT::|SigOpsubsume|
            BOOT::|SourceLevelSubsume| BOOT::|compMakeCategoryObject|
            BOOT::|MachineLevelSubset| BOOT::|MachineLevelSubsume|
            BOOT::|SigListOpSubsume| BOOT::|SigEqual|
            BOOT::|SigListMember| BOOT::|CategoryPrint| BOOT::|mkAnd2|
            BOOT::|categoryParts,build|
            BOOT::|catPairUnion,addConflict|
            BOOT::|clearCategoryTable1| BOOT::|parseCases,casefn|
            BOOT::|hasCat| BOOT::|superSub| BOOT::|encodeCategoryAlist|
            BOOT::|simpCategoryOr| BOOT::|tempExtendsCat|
            BOOT::CONVERSATION1 BOOT::|addDomainToTable|
            BOOT::|mkCategoryOr| BOOT::/EMBED-Q
            BOOT::|formalSubstitute|
            BOOT::|updateCategoryTableForDomain|
            BOOT::|simpCatHasAttribute| BOOT::|testExtend|
            BOOT::|mergeOr| BOOT::|newHasTest,fn| BOOT::|simpOrUnion1|
            BOOT::|updateCategoryTable| BOOT::|substDomainArgs|
            BOOT::|NRTreplaceLocalTypes| BOOT::|dcOpPrint|
            BOOT::|predicateBitIndex,pn| BOOT::|augmentPredCode|
            BOOT::|mungeAddGensyms| BOOT::|htSayExpose|
            BOOT::|makeCompactSigCode| BOOT::|evalDomainOpPred,process|
            BOOT::|makeGoGetSlot| BOOT::|dbShowOpHeading|
            BOOT::|makePrefixForm| BOOT::|dbShowOperationLines|
            BOOT::|buildBitTable,fn| BOOT::|makeCompactDirect1|
            BOOT::|augmentPredVector| BOOT::|simpOrDumb|
            BOOT::|dbReduceByForm| BOOT::|dbContrivedForm|
            BOOT::|dbReduceByOpSignature| BOOT::|dcOpLatchPrint|
            BOOT::|reduceByGroup| BOOT::|dbGetCondition|
            BOOT::|dbGetOrigin| BOOT::|koCatOps| BOOT::|modemap2Sig|
            BOOT::|substInOrder| BOOT::|pairlis| BOOT::|getDcForm|
            BOOT::|koCatAttrsAdd| BOOT::|getSubstInsert|
            BOOT::|integerAssignment2Fortran1| BOOT::|koOps,fn|
            BOOT::|getAllModemapsFromDatabase| BOOT::|koOps,merge|
            BOOT::|exp2FortOptimizeCS1,pushCsStacks|
            BOOT::|fortFormatTypes| BOOT::|segment2| BOOT::|whoUses|
            BOOT::|fortranifyIntrinsicFunctionName|
            BOOT::|expression2Fortran1| BOOT::|dispfortarrayexp|
            BOOT::|fortFormatIfGoto| BOOT::|koCatAttrs|
            BOOT::|dbGetContrivedForm| BOOT::|dispfortexpj|
            BOOT::|assignment2Fortran1| BOOT::|beenHere|
            BOOT::|dispfortexpf| BOOT::|htSayConstructor|
            BOOT::|stringPrefix?| VMLISP::PUTINDEXTABLE
            VMLISP::WRITE-INDEXTABLE BOOT::|NRTsetVector4Part2|
            BOOT::|consDomainName| BOOT::|NRTencode|
            BOOT::|consDomainForm| BOOT::|deltaTran| BOOT::|consSig|
            BOOT::|NRTaddToSlam| BOOT::|deepChaseInferences|
            BOOT::|c06gsfSolve,g| BOOT::|c06gsfSolve,f|
            BOOT::|NRTdescendCodeTran| BOOT::|mergeAppend|
            BOOT::|NRTgetLocalIndex1| BOOT::|vectorLocation|
            BOOT::|c06frfSolve,fy| BOOT::|c06frfSolve,gy|
            BOOT::|c06frfSolve,fx| BOOT::|c06frfSolve,gx|
            BOOT::|c06gqfSolve,g| BOOT::|c06gqfSolve,f|
            BOOT::|c06fpfSolve,f| BOOT::|c06fpfSolve,g|
            BOOT::|c06fqfSolve,f| BOOT::|c06fqfSolve,g|
            BOOT::|c06fufSolve,fy| BOOT::|c06fufSolve,gy|
            BOOT::|c06fufSolve,fx| BOOT::|c06fufSolve,gx|
            BOOT:|ListIsLength?| BOOT:|ListMemberQ?| BOOT:|ListMember?|
            BOOT:|ListRemoveQ| BOOT:|ListNRemoveQ| BOOT:|ListUnion|
            BOOT:|ListUnionQ| BOOT:|ListIntersection|
            BOOT:|ListIntersectionQ| BOOT:|ListAdjoin|
            BOOT:|ListAdjoinQ| BOOT:|AlistAssoc| BOOT:|AlistRemove|
            BOOT:|AlistAssocQ| BOOT:|AlistRemoveQ| BOOT:|AlistAdjoinQ|
            BOOT:|AlistUnionQ| BOOT::|rePackageTran|
            BOOT::|ncINTERPFILE| BOOT:|TableUnset|
            BOOT::|updateSymbolTable| FOAM:|printDFloat|
            FOAM:|printSFloat| FOAM:|fputs| FOAM:|printBInt|
            FOAM:|fputc| FOAM:|printSInt| FOAM:|printString|
            FOAM:|printChar| BOOT::|incAppend| BOOT::|segment1|
            BOOT::|intersectionContour,unifiable| BOOT::|getStatement|
            BOOT::|deltaContour,contourDifference|
            BOOT::|makeCommonEnvironment,makeSameLength| BOOT::DELLASOS
            BOOT::|addContour,fn| BOOT::|fortranifyFunctionName|
            BOOT::|displayOpModemaps| BOOT::|fortFormatTypes1|
            BOOT::|f02aefSolve,l| FOAM:|PtrMagicEQ| BOOT::|hasOption|
            BOOT::|intersectionContour| BOOT::|commandErrorIfAmbiguous|
            BOOT::|intersectionContour,computeIntersection|
            BOOT::|f04adfSolve,f| BOOT::|f04adfSolve,g|
            BOOT::|makeCommonEnvironment| BOOT::|makeLiteral|
            BOOT::|isLiteral| BOOT::|f04mcfSolve,f|
            BOOT::|f04mcfSolve,g| BOOT::|f04qafSolve,h| BOOT::|mapInto|
            BOOT::|f04qafSolve,k| BOOT::|stringMatches?|
            BOOT::|basicMatch?| BOOT::|optionError|
            BOOT::|displayProperties| BOOT::|mkErrorExpr,highlight|
            BOOT::|f04adfSolve,fb| BOOT::|mkErrorExpr,highlight1|
            BOOT::|coerce| BOOT::|numOfOccurencesOf| BOOT::|sublisR|
            BOOT::|compMapCond''| BOOT::|getAndSay|
            BOOT::|intersectionContour,interProplist| BOOT::|position|
            BOOT::|satDownLink| BOOT::|getmodeOrMapping|
            BOOT::|intersectionContour,compare|
            BOOT::|intersectionContour,modeCompare|
            BOOT::|getAbbreviation| BOOT::|koAttrs|
            BOOT::|GEQNSUBSTLIST,GSUBSTinner| BOOT::|isCategoryForm|
            BOOT::|resolve| BOOT::|convert| BOOT::|flatten|
            BOOT::|f04jgfSolve,f| BOOT::|npsynonym|
            BOOT::|f04jgfSolve,g| BOOT::|getImports,import|
            BOOT::|f04arfSolve,f| BOOT::|f04arfSolve,g|
            BOOT::|modeEqual| BOOT::|f04mbfSolve,l|
            BOOT::|displayWarning| BOOT::|f04mbfSolve,o|
            BOOT::|addContour| BOOT::|f04asfSolve,f|
            BOOT::|f04asfSolve,g| BOOT::|deleteAssoc|
            BOOT::|purgeNewConstructorLines|
            BOOT::|filterListOfStrings| BOOT::|asyDocumentation,fn|
            BOOT::|satisfiesRegularExpressions| BOOT::|displayProplist|
            BOOT::|transformAndRecheckComments|
            BOOT::|displaySemanticError| BOOT::|asySignature|
            BOOT::|f04mbfSolve,h| BOOT::|asyTypeUnitDeclare|
            BOOT::|f04mbfSolve,k| BOOT::|asyCatSignature|
            BOOT::|dbSpreadComments| BOOT::|computeAncestorsOf|
            BOOT::|descendantsOf| BOOT::|f04atfSolve,f|
            BOOT::|f04atfSolve,g| BOOT::|f04adfSolve,gb|
            BOOT::|reportOpsFromLisplib| BOOT::|f07fdfSolve,fa|
            BOOT::|f07fdfSolve,fb| BOOT::|f07aefSolve,fa|
            BOOT::|f07aefSolve,faa| BOOT::|f07adfSolve,fa|
            BOOT::|f07adfSolve,fb| BOOT::|childArgCheck|
            BOOT::|f07aefSolve,fb| BOOT::POSN1 BOOT::|assocCar|
            BOOT::|childAssoc| BOOT::|f07fefSolve,fb|
            BOOT::|f07fefSolve,fbb| BOOT::|ancestorsAdd|
            BOOT::|f07fefSolve,fa| BOOT::|quickOr|
            BOOT::|f07fefSolve,faa| BOOT::|f07aefSolve,fbb|
            BOOT::|explodeIfs,gn| BOOT::|f01qdfSolve,fa|
            BOOT::|f01qdfSolve,ga| BOOT::|dbGatherDataImplementation|
            BOOT::|dbMakeSignature| BOOT::|dbExposed?|
            BOOT::|getRegistry| BOOT::|opAlistCount|
            BOOT::|f01rdfSolve,gb| BOOT::|bcStarSpaceOp|
            BOOT::|evalDomainOpPred,convert| BOOT::|f02aefSolve,f|
            BOOT:|Sort| BOOT::|f02aefSolve,g| BOOT:|SortInPlace|
            BOOT::|evalDomainOpPred,evpred| BOOT::|f02aefSolve,h|
            BOOT::|evalDomainOpPred,evpred1| BOOT::|f02abfSolve,f|
            BOOT::|f02abfSolve,g| BOOT::|f02aafSolve,f|
            BOOT::|f02aafSolve,g| BOOT::|evalDomainOpPred|
            BOOT::|getDomainOpTable,memq| BOOT::|f02ajfSolve,h|
            BOOT::|f02ajfSolve,l| BOOT::|superMatch?|
            BOOT::|f02affSolve,f| BOOT::|f02affSolve,g|
            BOOT:|ByteFileWriteLine| BOOT::NREVERSE-N
            BOOT::|f02adfSolve,h| BOOT::|f02adfSolve,l|
            FOAM:|fiSetDebugger| BOOT::TRUNCLIST-1
            BOOT::|f02bjfSolve,h| BOOT::-REDUCE-OP
            BOOT::|f02bjfSolve,l| BOOT::OR2 BOOT::|f02axfSolve,h|
            BOOT::AND2 BOOT::|f02axfSolve,l| BOOT::|f02ajfSolve,f|
            BOOT::REPEAT-TRAN BOOT::|f02ajfSolve,g| BOOT::MKPFFLATTEN
            BOOT::|f02akfSolve,h| BOOT:|StreamSetPosition|
            BOOT::|f02akfSolve,l| BOOT::MKPF1 BOOT::|f02axfSolve,f|
            BOOT::|f02axfSolve,g| BOOT::-REPEAT BOOT::|f02xefSolve,fb|
            BOOT::|CONTAINED,EQUAL| BOOT::|f02xefSolve,gb|
            BOOT::|CONTAINED,EQ| BOOT::|f02awfSolve,h|
            BOOT::|f02awfSolve,l| BOOT::|kPageArgs|
            BOOT::|dbSubConform| BOOT::|f02akfSolve,f|
            BOOT::|f02akfSolve,g| BOOT:|PathnameWithType|
            BOOT::MARKHASH BOOT:|PathnameWithDirectory|
            BOOT::|f02bjfSolve,f| BOOT::|f02bjfSolve,g|
            BOOT::|f02adfSolve,f| BOOT::|f02adfSolve,g| BOOT::|,MIN|
            BOOT:|PathnameWithinDirectory|
            BOOT::|domainDescendantsOf,jfn|
            BOOT::|domainDescendantsOf,catScreen| BOOT::|,MAX|
            BOOT:|PathnameWithinOsEnvVar| BOOT::LEXLESSEQP
            BOOT::|,DIFFERENCE| BOOT::GLESSEQP BOOT::MAKE-INIT-VECTOR
            BOOT::|,TIMES| BOOT::|,PLUS| BOOT::|f02awfSolve,f|
            BOOT::|f02awfSolve,g| BOOT::SUBB BOOT::|getCDTEntry|
            BOOT::|f02xefSolve,fa| BOOT::|f02xefSolve,ga|
            BOOT::|domainDescendantsOf| BOOT::DO_LET
            BOOT::|f02agfSolve,f| BOOT:|CsetMember?|
            BOOT::|f02agfSolve,g| BOOT::|measureCommon,fn|
            BOOT:|CsetUnion| BOOT::|f02wefSolve,fb|
            BOOT::|f02wefSolve,gb| BOOT::|deleteWOC|
            BOOT::|f02bbfSolve,f| BOOT::|next| BOOT::|f02bbfSolve,g|
            BOOT::|suffix?| BOOT::|list2LongerVec|
            BOOT::|f02wefSolve,fa| BOOT::|mkCurryFun|
            BOOT::|f02wefSolve,ga| BOOT::|logicalMatch?|
            BOOT::|subCopy0| BOOT::|patternCheck,wild|
            BOOT:|StringFromToEnd| BOOT::|beforeAfter|
            BOOT::|deepSubCopyOrNil| BOOT::|patternCheck,pos|
            BOOT:|StringGreater?| BOOT::|deepSubCopy0| BOOT::|prefix?|
            BOOT:|StringPrefix?| BOOT::|subCopyOrNil|
            BOOT::|htpSetInputAreaAlist| BOOT::|termRW1|
            BOOT::|processInteractive| BOOT::|termRW|
            BOOT::|maskMatch?| BOOT::|tdAdd| BOOT::|filterByTopic|
            BOOT::|addTopic2Documentation| BOOT::|addStats|
            BOOT::|transferCodeCon| BOOT::|compileCases|
            BOOT::|transferClassCodes| BOOT::|addArgumentConditions|
            BOOT::|NRTassignCapsuleFunctionSlot|
            BOOT::|reportSpadTrace| BOOT::BVEC-NOR BOOT::BVEC-NAND
            BOOT::|addDomain| BOOT::|giveFormalParametersValues|
            BOOT::PRINT-DEFUN BOOT::|augmentTraceNames|
            BOOT::|stripOffSubdomainConditions|
            BOOT::|untraceDomainLocalOps| BOOT::TRANSLABEL1
            BOOT::|getOption| BOOT::TRANSLABEL BOOT::|traceOptionError|
            BOOT::GET-GLIPH-TOKEN BOOT::|funfind,LAM|
            BOOT::|mergePathnames| BOOT::|subTypes| BOOT::|lassocSub|
            BOOT::|dbWordFrom| BOOT::|commandUserLevelError|
            BOOT::|applyGrep| BOOT::|htButtonOn?|
            BOOT::|generalSearchString| BOOT::|zsystemdevelopment1|
            BOOT::|grepForAbbrev| BOOT::|match?| BOOT::|commandError|
            BOOT::|optionUserLevelError| BOOT::|firstDelim| BOOT::/READ
            BOOT::|kciReduceOpAlist| BOOT::|dbInfoTran|
            BOOT::|koPageInputAreaUnchanged?| BOOT::|dbInfoWrapOrigin|
            BOOT::|insert| BOOT::|dbInfoSigMatch| BOOT::|ancestorsOf|
            BOOT::|compIterator| BOOT::|getIdentity|
            BOOT::|augmentHasArgs| BOOT::|processInteractive1|
            BOOT::|recordAndPrint| BOOT::|interpretTopLevel|
            BOOT::|substituteSegmentedMsg|
            BOOT::|dbSpecialExpandIfNecessary| BOOT::|sameUnionBranch|
            BOOT::|htpSetPageDescription| BOOT::|testBitVector|
            BOOT::|dbShowConsDoc| BOOT::|printTypeAndTimeNormal|
            BOOT::|satTypeDownLink| BOOT::|printTypeAndTimeSaturn|
            BOOT::|mkDocLink| BOOT::|addParameterTemplates|
            BOOT::|hasPair| BOOT::|htpAddToPageDescription|
            BOOT::|getAliasIfTracedMapParameter| BOOT::|pfAbSynOp?|
            BOOT::|printTypeAndTime| BOOT::|phReportMsgs|
            BOOT::|untraceDomainConstructor,keepTraced?|
            BOOT::|htpButtonValue| BOOT::|htSayConstructorName|
            BOOT::|getMapSig| BOOT::|spadTrace,isTraceable|
            BOOT::|removeOption| BOOT::|screenLocalLine|
            BOOT::|undoSteps| BOOT::|agg| BOOT::|diffAlist|
            BOOT::|undoSingleStep| BOOT::|htSayBind|
            BOOT::|bcConstructor| BOOT::|checkArgs|
            BOOT::SPADTAGS-FROM-DIRECTORY BOOT::|matSuperList1|
            BOOT::|getBindingPowerOf| BOOT::|matSubList1|
            BOOT::|matWList1| BOOT::NAG-FILES BOOT::|htpLabelDefault|
            BOOT::GET-NAG-CHAPTER BOOT::|setNAGBootAutloadProperties|
            BOOT::|htpLabelErrorMsg| BOOT::|setBootAutloadProperties|
            BOOT::|setUpDefault| BOOT::|setBootAutoLoadProperty|
            BOOT::|mkBootAutoLoad| BOOT::|matWList| VMLISP::ECQEXP
            BOOT::|npTypedForm1| BOOT::|htMakeDoitButton| BOOT::|prnd|
            BOOT::|reportAO| BOOT::BVEC-XOR BOOT::BVEC-OR
            VMLISP::DCQEXP BOOT::BVEC-AND BOOT::BVEC-GREATER
            BOOT::BVEC-EQUAL BOOT::BVEC-CONCAT BOOT::|stringLE1|
            BOOT::BVEC-MAKE-FULL BOOT::|scylla| BOOT::|mkSuperSub|
            BOOT::|EqualBarGensym| BOOT::|pfReturn| BOOT::|pfSpread|
            BOOT::|npTypedForm| BOOT::|after|
            BOOT::|optCatch,changeThrowToGo|
            BOOT::|optCatch,hasNoThrows|
            BOOT::|optCatch,changeThrowToExit|
            BOOT::|optimizeFunctionDef,replaceThrowByReturn|
            BOOT::|optCallSpecially,lookup| BOOT::|EqualBarGensym,fn|
            BOOT::|pfLp| BOOT::|optimizeFunctionDef,fn|
            BOOT::|htpSetRadioButtonAlist| BOOT::|pfWrong|
            BOOT::|pfForin| BOOT::|pfDefinition| BOOT::|pfReturnTyped|
            BOOT::|pfLam| BOOT::|pfIfThenOnly| BOOT::|pfExit|
            BOOT::|printNamedStatsByProperty| BOOT::|Delay|
            BOOT::|initializeTimedNames| BOOT::|searchTailEnv|
            BOOT::|searchCurrentEnv| BOOT::|search|
            BOOT::|e04ycfSolve,fc| BOOT::|insertWOC,fn| BOOT::|mkObj|
            VMLISP:|union| BOOT::|coerceInt| BOOT::|deleteAssocWOC|
            BOOT::|e04nafSolve,fa| BOOT::|deleteAssocWOC,fn|
            BOOT::|e04nafSolve,fb| BOOT::|deleteLassoc| BOOT::REMALIST
            BOOT::|sublisNQ| BOOT::|BooleanEquality|
            BOOT::|sublisNQ,fn| BOOT::|modemapsHavingTarget|
            BOOT::|PPtoFile| BOOT::|positionInVec|
            BOOT::|e04mbfSolve,fa| BOOT::|e04mbfSolve,fb|
            BOOT::|mkIterVarSub| BOOT::|lazyOldAxiomDomainDevaluate|
            BOOT::|lazyOldAxiomDomainHashCode| BOOT::|declare|
            BOOT::|declareMap| BOOT::|concat1| BOOT::|upfreeWithType|
            BOOT::|uplocalWithType| BOOT::|deleteAll|
            BOOT::|oldAxiomCategoryDevaluate| BOOT::|SExprToDName|
            BOOT::|oldAxiomPreCategoryDevaluate|
            BOOT::|checkForFreeVariables| BOOT::|f01rdfSolve,fa|
            BOOT::|f01rdfSolve,ga| BOOT::|oldAxiomDomainDevaluate|
            BOOT::|newHasCategory| BOOT::|orderedDefaults|
            BOOT::|f01rdfSolve,fb| BOOT::|attributeNthParent| BOOT:DROP
            BOOT::|oldAxiomDomainHashCode| BOOT::|attributeHashCode|
            BOOT::|oldAxiomPreCategoryHashCode|
            BOOT::|attributeDevaluate| BOOT::|f01refSolve,fa|
            BOOT::|f01refSolve,ga| BOOT::|oldAxiomCategoryHashCode|
            BOOT:APPLYR BOOT::|f01qcfSolve,f| BOOT::|evalLET|
            BOOT::|f01qcfSolve,g| BOOT::|domainEqual| BOOT:STRINGSUFFIX
            BOOT::|f01qefSolve,fa| BOOT::|compileIs|
            BOOT::|f01qefSolve,ga| BOOT::|f01rcfSolve,fa|
            BOOT::|f01rcfSolve,ga| BOOT:CONVERSATION
            BOOT::|evalLETchangeValue| BOOT::|isPatternMatch|
            BOOT::|seteltable| BOOT::|intSayKeyedMsg|
            BOOT::|upLispCall| BOOT::|genIFvalCode| BOOT::|evalLETput|
            BOOT::|f01qdfSolve,fb| BOOT::|f01qdfSolve,gb|
            BOOT::|intloopProcessString| BOOT::|ncloopDQlines|
            BOOT::|intloopInclude1| BOOT::|intloopInclude|
            BOOT::|upIFgenValue| BOOT::|putPvarModes|
            BOOT::|ncloopPrefix?| BOOT::|intloopPrefix?|
            BOOT::|phIntReportMsgs| BOOT::|processMsgList|
            BOOT::|phParse| BOOT:TAKE BOOT::|isPatMatch|
            BOOT::|intloopReadConsole| BOOT::|streamChop|
            BOOT::|inclFname| BOOT::|incDrop| BOOT:SETANDFILE
            BOOT:PUSH-REDUCTION BOOT::|inclmsgFileCycle|
            BOOT::|assertCond| BOOT::|incActive?| BOOT:TAILFN
            BOOT:RPLACW BOOT::|incStream| BOOT::|inclHandleSay|
            BOOT::|inclHandleWarning| BOOT:FLAGP
            BOOT::|inclHandleError| BOOT:?ORDER BOOT::|incRenumberLine|
            BOOT::|incRenumberItem| BOOT::|lnSetGlobalNum| BOOT:S*
            FOAM::ALLOC-PROG-INFO BOOT::|liftCond,lcAnd|
            BOOT::|actOnInfo| BOOT::|mkJoin| BOOT::|plural|
            BOOT::|e04ucfSolve,fb| BOOT:MAKENEWOP BOOT::|has|
            BOOT::|containedRight| BOOT::|hashTypeForm| BOOT:CONTAINED
            BOOT::|oldAxiomPreCategoryParents|
            BOOT::|oldAxiomCategoryDefaultPackage| BOOT:POINTW
            BOOT::|linearFormatForm| BOOT::|newHasAttribute|
            BOOT::|oldAxiomCategoryParentCount|
            BOOT::|findSubstitutionOrder?,fn| BOOT::|app2StringConcat0|
            BOOT::|formDecl2String| BOOT::|sayLooking1|
            BOOT::|formJoin1| BOOT::|app2StringWrap| BOOT:S-
            BOOT::|mkLessOrEqual| BOOT::|formArguments2String|
            BOOT::|putValueValue| BOOT::|asTupleNew| BOOT::|objSetVal|
            BOOT::|objNewCode| FOAM-USER::H-ERROR BOOT::|displayRule|
            BOOT::|coerceInteractive| BOOT::|canMakeTuple|
            FOAM-USER::H-STRING BOOT:CARCDREXPAND
            BOOT::|formatOpSymbol| FOAM-USER::H-INTEGER
            BOOT::|addPatternPred| BOOT::|interpMap| BOOT::|mkLocalVar|
            BOOT:/EMBED-1 BOOT::|findLocalVars1|
            BOOT::|queryUserKeyedMsg| BOOT::|mkFreeVar|
            BOOT::|findLocalVars|)) 
(PROCLAIM
    '(FTYPE (FUNCTION NIL FIXNUM) BOOT::HEAPELAPSED
            BOOT:|OsProcessNumber| BOOT::KCL-OS-PROCESS-NUMBER)) 
(PROCLAIM
    '(FTYPE (FUNCTION NIL (VALUES T T)) BOOT::MAKE-CLOSEDFN-NAME
            BOOT::|genVariable| BOOT::|genSomeVariable|
            BOOT::|genDomainVar| BOOT:GENVAR)) 