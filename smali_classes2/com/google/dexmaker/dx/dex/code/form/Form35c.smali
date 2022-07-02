.class public final Lcom/google/dexmaker/dx/dex/code/form/Form35c;
.super Lcom/google/dexmaker/dx/dex/code/InsnFormat;
.source "Form35c.java"


# static fields
.field public static final THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/form/Form35c;

    invoke-direct {v0}, Lcom/google/dexmaker/dx/dex/code/form/Form35c;-><init>()V

    sput-object v0, Lcom/google/dexmaker/dx/dex/code/form/Form35c;->THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method

.method private static explicitize(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;
    .locals 7

    .line 186
    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/form/Form35c;->wordCount(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)I

    move-result v0

    .line 187
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 193
    :cond_0
    new-instance v2, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 197
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 198
    invoke-virtual {v2, v3, v4}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->set(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    .line 199
    invoke-virtual {v4}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 200
    invoke-virtual {v4}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sget-object v6, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-static {v4, v6}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->make(ILcom/google/dexmaker/dx/rop/type/TypeBearer;)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->set(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/util/MutabilityControl;->setImmutable()V

    return-object v2
.end method

.method private static wordCount(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)I
    .locals 7

    .line 150
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 160
    invoke-virtual {p0, v3}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 161
    invoke-virtual {v5}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    add-int/2addr v4, v6

    .line 168
    invoke-virtual {v5}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInNibble(I)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gt v4, v1, :cond_3

    move v2, v4

    :cond_3
    return v2
.end method


# virtual methods
.method public codeSize()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public compatibleRegs(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 4

    .line 101
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result p1

    .line 103
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInNibble(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public insnArgString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 1

    .line 54
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/form/Form35c;->explicitize(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->regListString(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->cstString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insnCommentString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 62
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->cstComment(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public isCompatible(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Z
    .locals 2

    .line 77
    instance-of p0, p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 81
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    .line 82
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getIndex()I

    move-result p0

    .line 84
    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInShort(I)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object p0

    .line 89
    instance-of v1, p0, Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    if-nez v1, :cond_2

    instance-of p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstType;

    if-nez p0, :cond_2

    return v0

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 95
    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/form/Form35c;->wordCount(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)I

    move-result p0

    if-ltz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public writeTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V
    .locals 8

    .line 123
    move-object p0, p2

    check-cast p0, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getIndex()I

    move-result p0

    .line 124
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/dexmaker/dx/dex/code/form/Form35c;->explicitize(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 126
    invoke-virtual {v0, v2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 127
    invoke-virtual {v0, v4}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const/4 v5, 0x2

    if-le v1, v5, :cond_2

    .line 128
    invoke-virtual {v0, v5}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    const/4 v6, 0x3

    if-le v1, v6, :cond_3

    .line 129
    invoke-virtual {v0, v6}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    const/4 v7, 0x4

    if-le v1, v7, :cond_4

    .line 130
    invoke-virtual {v0, v7}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 132
    :cond_4
    invoke-static {v2, v1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->makeByte(II)I

    move-result v0

    invoke-static {p2, v0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/google/dexmaker/dx/dex/code/DalvInsn;I)S

    move-result p2

    int-to-short p0, p0

    invoke-static {v3, v4, v5, v6}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->codeUnit(IIII)S

    move-result v0

    invoke-static {p1, p2, p0, v0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->write(Lcom/google/dexmaker/dx/util/AnnotatedOutput;SSS)V

    return-void
.end method
