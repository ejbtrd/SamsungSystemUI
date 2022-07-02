.class public final Lcom/google/dexmaker/dx/rop/code/BasicBlockList;
.super Lcom/google/dexmaker/dx/util/LabeledList;
.source "BasicBlockList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/dx/rop/code/BasicBlockList$RegCountVisitor;
    }
.end annotation


# instance fields
.field private regCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/util/LabeledList;-><init>(I)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->regCount:I

    return-void
.end method


# virtual methods
.method public forEachInsn(Lcom/google/dexmaker/dx/rop/code/Insn$Visitor;)V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 177
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->get(I)Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->getInsns()Lcom/google/dexmaker/dx/rop/code/InsnList;

    move-result-object v2

    .line 179
    invoke-virtual {v2, p1}, Lcom/google/dexmaker/dx/rop/code/InsnList;->forEach(Lcom/google/dexmaker/dx/rop/code/Insn$Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lcom/google/dexmaker/dx/rop/code/BasicBlock;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->get0(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    return-object p0
.end method

.method public getInstructionCount()I
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 112
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->getInsns()Lcom/google/dexmaker/dx/rop/code/InsnList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getRegCount()I
    .locals 2

    .line 92
    iget v0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->regCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Lcom/google/dexmaker/dx/rop/code/BasicBlockList$RegCountVisitor;

    invoke-direct {v0}, Lcom/google/dexmaker/dx/rop/code/BasicBlockList$RegCountVisitor;-><init>()V

    .line 94
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->forEachInsn(Lcom/google/dexmaker/dx/rop/code/Insn$Visitor;)V

    .line 95
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/BasicBlockList$RegCountVisitor;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->regCount:I

    .line 98
    :cond_0
    iget p0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->regCount:I

    return p0
.end method

.method public labelToBlock(I)Lcom/google/dexmaker/dx/rop/code/BasicBlock;
    .locals 2

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/LabeledList;->indexOfLabel(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->get(I)Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no such label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/dexmaker/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public preferredSuccessorOf(Lcom/google/dexmaker/dx/rop/code/BasicBlock;)Lcom/google/dexmaker/dx/rop/code/BasicBlock;
    .locals 4

    .line 230
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    .line 231
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->getSuccessors()Lcom/google/dexmaker/dx/util/IntList;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/util/IntList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 244
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    move-result-object p0

    return-object p0

    .line 246
    :cond_0
    invoke-virtual {p1, v3}, Lcom/google/dexmaker/dx/util/IntList;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    move-result-object p0

    return-object p0

    .line 239
    :cond_1
    invoke-virtual {p1, v3}, Lcom/google/dexmaker/dx/util/IntList;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public set(ILcom/google/dexmaker/dx/rop/code/BasicBlock;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/google/dexmaker/dx/util/LabeledList;->set(ILcom/google/dexmaker/dx/util/LabeledItem;)V

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->regCount:I

    return-void
.end method
