.class public final Lcom/google/dexmaker/dx/dex/code/form/Form21h;
.super Lcom/google/dexmaker/dx/dex/code/InsnFormat;
.source "Form21h.java"


# static fields
.field public static final THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/form/Form21h;

    invoke-direct {v0}, Lcom/google/dexmaker/dx/dex/code/form/Form21h;-><init>()V

    sput-object v0, Lcom/google/dexmaker/dx/dex/code/form/Form21h;->THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public compatibleRegs(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 1

    .line 103
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 104
    new-instance p1, Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result p0

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/util/BitSet;->set(IZ)V

    return-object p1
.end method

.method public insnArgString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 49
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->literalBitsString(Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insnCommentString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 58
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p0, p2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getCategory()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    const/16 p0, 0x20

    goto :goto_0

    :cond_0
    const/16 p0, 0x40

    :goto_0
    invoke-static {p1, p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->literalBitsComment(Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCompatible(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Z
    .locals 5

    .line 74
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 75
    instance-of v0, p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    .line 82
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object p1

    .line 84
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    if-nez v0, :cond_1

    return v1

    .line 88
    :cond_1
    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getCategory()I

    move-result p0

    if-ne p0, v2, :cond_3

    .line 92
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide p0

    const-wide v3, 0xffffffffffffL

    and-long/2addr p0, v3

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    :goto_0
    return v1
.end method

.method public writeTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V
    .locals 4

    .line 113
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 114
    move-object v0, p2

    check-cast v0, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v2

    const/16 v0, 0x30

    ushr-long/2addr v2, v0

    long-to-int v0, v2

    :goto_0
    int-to-short v0, v0

    .line 124
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result p0

    invoke-static {p2, p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/google/dexmaker/dx/dex/code/DalvInsn;I)S

    move-result p0

    invoke-static {p1, p0, v0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->write(Lcom/google/dexmaker/dx/util/AnnotatedOutput;SS)V

    return-void
.end method
