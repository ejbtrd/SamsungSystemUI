.class Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;
.super Ljava/lang/Object;
.source "RopTranslator.java"

# interfaces
.implements Lcom/google/dexmaker/dx/rop/code/Insn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/dx/dex/code/RopTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationVisitor"
.end annotation


# instance fields
.field private block:Lcom/google/dexmaker/dx/rop/code/BasicBlock;

.field private lastAddress:Lcom/google/dexmaker/dx/dex/code/CodeAddress;

.field private final output:Lcom/google/dexmaker/dx/dex/code/OutputCollector;

.field final synthetic this$0:Lcom/google/dexmaker/dx/dex/code/RopTranslator;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/dex/code/RopTranslator;Lcom/google/dexmaker/dx/dex/code/OutputCollector;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/google/dexmaker/dx/dex/code/RopTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/google/dexmaker/dx/dex/code/OutputCollector;

    return-void
.end method

.method private getNextMoveResultPseudo()Lcom/google/dexmaker/dx/rop/code/RegisterSpec;
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 675
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/google/dexmaker/dx/dex/code/RopTranslator;

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/RopTranslator;->access$500(Lcom/google/dexmaker/dx/dex/code/RopTranslator;)Lcom/google/dexmaker/dx/rop/code/RopMethod;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RopMethod;->getBlocks()Lcom/google/dexmaker/dx/rop/code/BasicBlockList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->getInsns()Lcom/google/dexmaker/dx/rop/code/InsnList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/InsnList;->get(I)Lcom/google/dexmaker/dx/rop/code/Insn;

    move-result-object p0

    .line 678
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/Insn;->getOpcode()Lcom/google/dexmaker/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v2, 0x38

    if-eq v0, v2, :cond_1

    return-object v1

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/Insn;->getResult()Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected addOutput(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V
    .locals 0

    .line 796
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/google/dexmaker/dx/dex/code/OutputCollector;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/OutputCollector;->add(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public setBlock(Lcom/google/dexmaker/dx/rop/code/BasicBlock;Lcom/google/dexmaker/dx/dex/code/CodeAddress;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    .line 526
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/google/dexmaker/dx/dex/code/CodeAddress;

    return-void
.end method

.method public visitPlainCstInsn(Lcom/google/dexmaker/dx/rop/code/PlainCstInsn;)V
    .locals 5

    .line 579
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 580
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/RopToDop;->dopFor(Lcom/google/dexmaker/dx/rop/code/Insn;)Lcom/google/dexmaker/dx/dex/code/Dop;

    move-result-object v1

    .line 581
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->getOpcode()Lcom/google/dexmaker/dx/rop/code/Rop;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/Rop;->getOpcode()I

    move-result v3

    .line 585
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    .line 590
    iget-object v2, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/google/dexmaker/dx/dex/code/RopTranslator;

    invoke-static {v2}, Lcom/google/dexmaker/dx/dex/code/RopTranslator;->access$200(Lcom/google/dexmaker/dx/dex/code/RopTranslator;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 596
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->getResult()Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 597
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->getValue()I

    move-result p1

    .line 599
    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/google/dexmaker/dx/dex/code/RopTranslator;

    invoke-static {v3}, Lcom/google/dexmaker/dx/dex/code/RopTranslator;->access$300(Lcom/google/dexmaker/dx/dex/code/RopTranslator;)I

    move-result v3

    iget-object v4, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/google/dexmaker/dx/dex/code/RopTranslator;

    invoke-static {v4}, Lcom/google/dexmaker/dx/dex/code/RopTranslator;->access$400(Lcom/google/dexmaker/dx/dex/code/RopTranslator;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p1

    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->make(ILcom/google/dexmaker/dx/rop/type/TypeBearer;)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 602
    new-instance v3, Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    invoke-static {v2, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->make(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lcom/google/dexmaker/dx/dex/code/SimpleInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V

    .line 604
    invoke-virtual {p0, v3}, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/RopTranslator;->access$000(Lcom/google/dexmaker/dx/rop/code/Insn;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 609
    new-instance v3, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object p1

    invoke-direct {v3, v1, v0, v2, p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;Lcom/google/dexmaker/dx/rop/cst/Constant;)V

    .line 610
    invoke-virtual {p0, v3}, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V

    :cond_1
    :goto_0
    return-void

    .line 586
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitPlainInsn(Lcom/google/dexmaker/dx/rop/code/PlainInsn;)V
    .locals 5

    .line 531
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->getOpcode()Lcom/google/dexmaker/dx/rop/code/Rop;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    return-void

    .line 544
    :cond_1
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 545
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/RopToDop;->dopFor(Lcom/google/dexmaker/dx/rop/code/Insn;)Lcom/google/dexmaker/dx/dex/code/Dop;

    move-result-object v2

    .line 548
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 570
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 564
    :cond_3
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->getSuccessors()Lcom/google/dexmaker/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/dexmaker/dx/util/IntList;->get(I)I

    move-result v0

    .line 565
    new-instance v3, Lcom/google/dexmaker/dx/dex/code/TargetInsn;

    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/RopTranslator;->access$000(Lcom/google/dexmaker/dx/rop/code/Insn;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p1

    iget-object v4, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/google/dexmaker/dx/dex/code/RopTranslator;

    invoke-static {v4}, Lcom/google/dexmaker/dx/dex/code/RopTranslator;->access$100(Lcom/google/dexmaker/dx/dex/code/RopTranslator;)Lcom/google/dexmaker/dx/dex/code/BlockAddresses;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/dexmaker/dx/dex/code/BlockAddresses;->getStart(I)Lcom/google/dexmaker/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-direct {v3, v2, v1, p1, v0}, Lcom/google/dexmaker/dx/dex/code/TargetInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;Lcom/google/dexmaker/dx/dex/code/CodeAddress;)V

    goto :goto_1

    :cond_4
    return-void

    .line 552
    :cond_5
    :goto_0
    new-instance v3, Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/RopTranslator;->access$000(Lcom/google/dexmaker/dx/rop/code/Insn;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-direct {v3, v2, v1, p1}, Lcom/google/dexmaker/dx/dex/code/SimpleInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V

    .line 574
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public visitThrowingCstInsn(Lcom/google/dexmaker/dx/rop/code/ThrowingCstInsn;)V
    .locals 10

    .line 687
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 688
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/RopToDop;->dopFor(Lcom/google/dexmaker/dx/rop/code/Insn;)Lcom/google/dexmaker/dx/dex/code/Dop;

    move-result-object v1

    .line 689
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->getOpcode()Lcom/google/dexmaker/dx/rop/code/Rop;

    move-result-object v2

    .line 690
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object v3

    .line 692
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/Rop;->getBranchingness()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 696
    iget-object v4, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/google/dexmaker/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v4}, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V

    .line 698
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/Rop;->isCallLike()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 699
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->getSources()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 700
    new-instance v2, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-direct {v2, v1, v0, p1, v3}, Lcom/google/dexmaker/dx/dex/code/CstInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;Lcom/google/dexmaker/dx/rop/cst/Constant;)V

    .line 702
    invoke-virtual {p0, v2}, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V

    goto :goto_3

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 706
    invoke-static {p1, v4}, Lcom/google/dexmaker/dx/dex/code/RopTranslator;->access$600(Lcom/google/dexmaker/dx/rop/code/Insn;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object v5

    .line 709
    invoke-virtual {v1}, Lcom/google/dexmaker/dx/dex/code/Dop;->hasResult()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/Rop;->getOpcode()I

    move-result v6

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v8

    :goto_1
    if-eqz v4, :cond_3

    move v7, v8

    :cond_3
    if-ne v6, v7, :cond_5

    .line 718
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/Rop;->getOpcode()I

    move-result p1

    const/16 v2, 0x29

    if-ne p1, v2, :cond_4

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/dex/code/Dop;->getOpcode()I

    move-result p1

    const/16 v2, 0x23

    if-eq p1, v2, :cond_4

    .line 725
    new-instance p1, Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    invoke-direct {p1, v1, v0, v5}, Lcom/google/dexmaker/dx/dex/code/SimpleInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V

    goto :goto_2

    .line 731
    :cond_4
    new-instance p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-direct {p1, v1, v0, v5, v3}, Lcom/google/dexmaker/dx/dex/code/CstInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;Lcom/google/dexmaker/dx/rop/cst/Constant;)V

    .line 734
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V

    :goto_3
    return-void

    .line 713
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insn with result/move-result-pseudo mismatch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 693
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitThrowingInsn(Lcom/google/dexmaker/dx/rop/code/ThrowingInsn;)V
    .locals 5

    .line 740
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 741
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/RopToDop;->dopFor(Lcom/google/dexmaker/dx/rop/code/Insn;)Lcom/google/dexmaker/dx/dex/code/Dop;

    move-result-object v1

    .line 742
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/Insn;->getOpcode()Lcom/google/dexmaker/dx/rop/code/Rop;

    move-result-object v2

    .line 745
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 749
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 751
    invoke-virtual {v1}, Lcom/google/dexmaker/dx/dex/code/Dop;->hasResult()Z

    move-result v3

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v3, v4, :cond_1

    .line 756
    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/google/dexmaker/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v3}, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V

    .line 758
    new-instance v3, Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    invoke-static {p1, v2}, Lcom/google/dexmaker/dx/dex/code/RopTranslator;->access$600(Lcom/google/dexmaker/dx/rop/code/Insn;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lcom/google/dexmaker/dx/dex/code/SimpleInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V

    .line 761
    invoke-virtual {p0, v3}, Lcom/google/dexmaker/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V

    return-void

    .line 752
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insn with result/move-result-pseudo mismatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 746
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
