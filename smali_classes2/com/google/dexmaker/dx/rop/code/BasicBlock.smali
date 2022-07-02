.class public final Lcom/google/dexmaker/dx/rop/code/BasicBlock;
.super Ljava/lang/Object;
.source "BasicBlock.java"

# interfaces
.implements Lcom/google/dexmaker/dx/util/LabeledItem;


# instance fields
.field private final insns:Lcom/google/dexmaker/dx/rop/code/InsnList;

.field private final label:I

.field private final primarySuccessor:I

.field private final successors:Lcom/google/dexmaker/dx/util/IntList;


# direct methods
.method public constructor <init>(ILcom/google/dexmaker/dx/rop/code/InsnList;Lcom/google/dexmaker/dx/util/IntList;I)V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_7

    .line 66
    :try_start_0
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/util/MutabilityControl;->throwIfMutable()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v1, v0, -0x2

    :goto_0
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    .line 79
    invoke-virtual {p2, v1}, Lcom/google/dexmaker/dx/rop/code/InsnList;->get(I)Lcom/google/dexmaker/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/code/Insn;->getOpcode()Lcom/google/dexmaker/dx/rop/code/Rop;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    if-ne v3, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insns["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] is a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "branch or can throw"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr v0, v2

    .line 86
    invoke-virtual {p2, v0}, Lcom/google/dexmaker/dx/rop/code/InsnList;->get(I)Lcom/google/dexmaker/dx/rop/code/Insn;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/Insn;->getOpcode()Lcom/google/dexmaker/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 94
    :try_start_1
    invoke-virtual {p3}, Lcom/google/dexmaker/dx/util/MutabilityControl;->throwIfMutable()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    if-lt p4, v0, :cond_4

    if-ltz p4, :cond_3

    .line 104
    invoke-virtual {p3, p4}, Lcom/google/dexmaker/dx/util/IntList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "primarySuccessor "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not in successors "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_3
    :goto_1
    iput p1, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->label:I

    .line 110
    iput-object p2, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->insns:Lcom/google/dexmaker/dx/rop/code/InsnList;

    .line 111
    iput-object p3, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->successors:Lcom/google/dexmaker/dx/util/IntList;

    .line 112
    iput p4, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->primarySuccessor:I

    return-void

    .line 101
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "primarySuccessor < -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "successors == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "insns does not end with a branch or throwing instruction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "insns.size() == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :catch_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "insns == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "label < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public canThrow()Z
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->insns:Lcom/google/dexmaker/dx/rop/code/InsnList;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/InsnList;->getLast()Lcom/google/dexmaker/dx/rop/code/Insn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/Insn;->canThrow()Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getInsns()Lcom/google/dexmaker/dx/rop/code/InsnList;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->insns:Lcom/google/dexmaker/dx/rop/code/InsnList;

    return-object p0
.end method

.method public getLabel()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->label:I

    return p0
.end method

.method public getLastInsn()Lcom/google/dexmaker/dx/rop/code/Insn;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->insns:Lcom/google/dexmaker/dx/rop/code/InsnList;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/InsnList;->getLast()Lcom/google/dexmaker/dx/rop/code/Insn;

    move-result-object p0

    return-object p0
.end method

.method public getPrimarySuccessor()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->primarySuccessor:I

    return p0
.end method

.method public getSecondarySuccessor()I
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->successors:Lcom/google/dexmaker/dx/util/IntList;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/util/IntList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->successors:Lcom/google/dexmaker/dx/util/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/dx/util/IntList;->get(I)I

    move-result v0

    .line 187
    iget v1, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->primarySuccessor:I

    if-ne v0, v1, :cond_0

    .line 188
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->successors:Lcom/google/dexmaker/dx/util/IntList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/util/IntList;->get(I)I

    move-result v0

    :cond_0
    return v0

    .line 182
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "block doesn\'t have exactly two successors"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSuccessors()Lcom/google/dexmaker/dx/util/IntList;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->successors:Lcom/google/dexmaker/dx/util/IntList;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 134
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->label:I

    invoke-static {p0}, Lcom/google/dexmaker/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
