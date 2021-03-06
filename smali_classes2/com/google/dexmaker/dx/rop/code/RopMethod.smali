.class public final Lcom/google/dexmaker/dx/rop/code/RopMethod;
.super Ljava/lang/Object;
.source "RopMethod.java"


# instance fields
.field private final blocks:Lcom/google/dexmaker/dx/rop/code/BasicBlockList;

.field private exitPredecessors:Lcom/google/dexmaker/dx/util/IntList;

.field private final firstLabel:I

.field private predecessors:[Lcom/google/dexmaker/dx/util/IntList;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/code/BasicBlockList;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "blocks == null"

    .line 53
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    .line 60
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->blocks:Lcom/google/dexmaker/dx/rop/code/BasicBlockList;

    .line 61
    iput p2, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->firstLabel:I

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->predecessors:[Lcom/google/dexmaker/dx/util/IntList;

    .line 64
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->exitPredecessors:Lcom/google/dexmaker/dx/util/IntList;

    return-void

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstLabel < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private calcPredecessors()V
    .locals 13

    .line 152
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->blocks:Lcom/google/dexmaker/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/util/LabeledList;->getMaxLabel()I

    move-result v0

    .line 153
    new-array v1, v0, [Lcom/google/dexmaker/dx/util/IntList;

    .line 154
    new-instance v2, Lcom/google/dexmaker/dx/util/IntList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/google/dexmaker/dx/util/IntList;-><init>(I)V

    .line 155
    iget-object v4, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->blocks:Lcom/google/dexmaker/dx/rop/code/BasicBlockList;

    invoke-virtual {v4}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    .line 162
    iget-object v7, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->blocks:Lcom/google/dexmaker/dx/rop/code/BasicBlockList;

    invoke-virtual {v7, v6}, Lcom/google/dexmaker/dx/rop/code/BasicBlockList;->get(I)Lcom/google/dexmaker/dx/rop/code/BasicBlock;

    move-result-object v7

    .line 163
    invoke-virtual {v7}, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->getLabel()I

    move-result v8

    .line 164
    invoke-virtual {v7}, Lcom/google/dexmaker/dx/rop/code/BasicBlock;->getSuccessors()Lcom/google/dexmaker/dx/util/IntList;

    move-result-object v7

    .line 165
    invoke-virtual {v7}, Lcom/google/dexmaker/dx/util/IntList;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 168
    invoke-virtual {v2, v8}, Lcom/google/dexmaker/dx/util/IntList;->add(I)V

    goto :goto_2

    :cond_0
    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_2

    .line 171
    invoke-virtual {v7, v10}, Lcom/google/dexmaker/dx/util/IntList;->get(I)I

    move-result v11

    .line 172
    aget-object v12, v1, v11

    if-nez v12, :cond_1

    .line 174
    new-instance v12, Lcom/google/dexmaker/dx/util/IntList;

    invoke-direct {v12, v3}, Lcom/google/dexmaker/dx/util/IntList;-><init>(I)V

    .line 175
    aput-object v12, v1, v11

    .line 177
    :cond_1
    invoke-virtual {v12, v8}, Lcom/google/dexmaker/dx/util/IntList;->add(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v5, v0, :cond_5

    .line 184
    aget-object v3, v1, v5

    if-eqz v3, :cond_4

    .line 186
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/util/IntList;->sort()V

    .line 187
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/util/MutabilityControl;->setImmutable()V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 191
    :cond_5
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/util/IntList;->sort()V

    .line 192
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/util/MutabilityControl;->setImmutable()V

    .line 200
    iget v0, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->firstLabel:I

    aget-object v3, v1, v0

    if-nez v3, :cond_6

    .line 201
    sget-object v3, Lcom/google/dexmaker/dx/util/IntList;->EMPTY:Lcom/google/dexmaker/dx/util/IntList;

    aput-object v3, v1, v0

    .line 204
    :cond_6
    iput-object v1, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->predecessors:[Lcom/google/dexmaker/dx/util/IntList;

    .line 205
    iput-object v2, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->exitPredecessors:Lcom/google/dexmaker/dx/util/IntList;

    return-void
.end method


# virtual methods
.method public getBlocks()Lcom/google/dexmaker/dx/rop/code/BasicBlockList;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->blocks:Lcom/google/dexmaker/dx/rop/code/BasicBlockList;

    return-object p0
.end method

.method public getFirstLabel()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->firstLabel:I

    return p0
.end method

.method public labelToPredecessors(I)Lcom/google/dexmaker/dx/util/IntList;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->exitPredecessors:Lcom/google/dexmaker/dx/util/IntList;

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/google/dexmaker/dx/rop/code/RopMethod;->calcPredecessors()V

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/code/RopMethod;->predecessors:[Lcom/google/dexmaker/dx/util/IntList;

    aget-object p0, p0, p1

    if-eqz p0, :cond_1

    return-object p0

    .line 101
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no such block: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/dexmaker/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
