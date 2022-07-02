.class public final Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;
.super Lcom/google/dexmaker/dx/dex/code/VariableSizeInsn;
.source "HighRegisterPrefix.java"


# instance fields
.field private insns:[Lcom/google/dexmaker/dx/dex/code/SimpleInsn;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/dx/dex/code/VariableSizeInsn;-><init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V

    .line 47
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    return-void

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "registers.size() == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private calculateInsnsIfNecessary()V
    .locals 7

    .line 83
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v1

    .line 90
    new-array v2, v1, [Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    iput-object v2, p0, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 93
    invoke-virtual {v0, v2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 94
    iget-object v5, p0, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    invoke-static {v4, v3}, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;->moveInsnFor(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;I)Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    move-result-object v6

    aput-object v6, v5, v2

    .line 95
    invoke-virtual {v4}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static moveInsnFor(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;I)Lcom/google/dexmaker/dx/dex/code/SimpleInsn;
    .locals 2

    .line 143
    sget-object v0, Lcom/google/dexmaker/dx/rop/code/SourcePosition;->NO_INFO:Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->make(ILcom/google/dexmaker/dx/rop/type/TypeBearer;)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->makeMove(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public codeSize()I
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;->calculateInsnsIfNecessary()V

    .line 61
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 62
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/code/FixedSizeInsn;->codeSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .locals 7

    .line 114
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    .line 116
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 119
    invoke-virtual {p0, v2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 120
    invoke-static {v4, v3}, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;->moveInsnFor(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;I)Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    move-result-object v5

    if-eqz v2, :cond_0

    const/16 v6, 0xa

    .line 123
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    invoke-virtual {v5, p1}, Lcom/google/dexmaker/dx/dex/code/FixedSizeInsn;->listingString0(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {v4}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withRegisters(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Lcom/google/dexmaker/dx/dex/code/DalvInsn;
    .locals 1

    .line 102
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;-><init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V

    return-object v0
.end method

.method public writeTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;->calculateInsnsIfNecessary()V

    .line 73
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/google/dexmaker/dx/dex/code/SimpleInsn;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 74
    invoke-virtual {v2, p1}, Lcom/google/dexmaker/dx/dex/code/FixedSizeInsn;->writeTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
