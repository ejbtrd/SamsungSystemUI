.class public final Lcom/google/dexmaker/dx/dex/code/CstInsn;
.super Lcom/google/dexmaker/dx/dex/code/FixedSizeInsn;
.source "CstInsn.java"


# instance fields
.field private classIndex:I

.field private final constant:Lcom/google/dexmaker/dx/rop/cst/Constant;

.field private index:I


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;Lcom/google/dexmaker/dx/rop/cst/Constant;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/dexmaker/dx/dex/code/FixedSizeInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V

    const-string p1, "constant == null"

    .line 59
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iput-object p4, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->constant:Lcom/google/dexmaker/dx/rop/cst/Constant;

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->index:I

    .line 64
    iput p1, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->classIndex:I

    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->constant:Lcom/google/dexmaker/dx/rop/cst/Constant;

    invoke-interface {p0}, Lcom/google/dexmaker/dx/util/ToHuman;->toHuman()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->constant:Lcom/google/dexmaker/dx/rop/cst/Constant;

    return-object p0
.end method

.method public getIndex()I
    .locals 3

    .line 117
    iget v0, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->index:I

    if-ltz v0, :cond_0

    return v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index not yet set for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->constant:Lcom/google/dexmaker/dx/rop/cst/Constant;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasIndex()Z
    .locals 0

    .line 132
    iget p0, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->index:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setClassIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 193
    iget v0, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->classIndex:I

    if-gez v0, :cond_0

    .line 197
    iput p1, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->classIndex:I

    return-void

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "class index already set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 146
    iget v0, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->index:I

    if-gez v0, :cond_0

    .line 150
    iput p1, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->index:I

    return-void

    .line 147
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "index already set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withOpcode(Lcom/google/dexmaker/dx/dex/code/Dop;)Lcom/google/dexmaker/dx/dex/code/DalvInsn;
    .locals 4

    .line 70
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->constant:Lcom/google/dexmaker/dx/rop/cst/Constant;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/dexmaker/dx/dex/code/CstInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;Lcom/google/dexmaker/dx/rop/cst/Constant;)V

    .line 73
    iget p1, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->index:I

    if-ltz p1, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->setIndex(I)V

    .line 77
    :cond_0
    iget p0, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->classIndex:I

    if-ltz p0, :cond_1

    .line 78
    invoke-virtual {v0, p0}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->setClassIndex(I)V

    :cond_1
    return-object v0
.end method

.method public withRegisters(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Lcom/google/dexmaker/dx/dex/code/DalvInsn;
    .locals 4

    .line 87
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getOpcode()Lcom/google/dexmaker/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->constant:Lcom/google/dexmaker/dx/rop/cst/Constant;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/dexmaker/dx/dex/code/CstInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;Lcom/google/dexmaker/dx/rop/cst/Constant;)V

    .line 90
    iget p1, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->index:I

    if-ltz p1, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->setIndex(I)V

    .line 94
    :cond_0
    iget p0, p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;->classIndex:I

    if-ltz p0, :cond_1

    .line 95
    invoke-virtual {v0, p0}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->setClassIndex(I)V

    :cond_1
    return-object v0
.end method
