.class public final Lcom/google/dexmaker/dx/dex/code/form/Form11n;
.super Lcom/google/dexmaker/dx/dex/code/InsnFormat;
.source "Form11n.java"


# static fields
.field public static final THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/form/Form11n;

    invoke-direct {v0}, Lcom/google/dexmaker/dx/dex/code/form/Form11n;-><init>()V

    sput-object v0, Lcom/google/dexmaker/dx/dex/code/form/Form11n;->THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;

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

    const/4 p0, 0x1

    return p0
.end method

.method public compatibleRegs(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 1

    .line 93
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 94
    new-instance p1, Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result p0

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInNibble(I)Z

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
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    const/4 p1, 0x4

    .line 58
    invoke-static {p0, p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->literalBitsComment(Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCompatible(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Z
    .locals 3

    .line 70
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 72
    instance-of v0, p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result p0

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInNibble(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    .line 79
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object p0

    .line 81
    instance-of p1, p0, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    if-nez p1, :cond_1

    return v1

    .line 85
    :cond_1
    check-cast p0, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    .line 87
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;->fitsInInt()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result p0

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->signedFitsInNibble(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public writeTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V
    .locals 2

    .line 103
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 104
    move-object v0, p2

    check-cast v0, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result p0

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0, v0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->makeByte(II)I

    move-result p0

    invoke-static {p2, p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/google/dexmaker/dx/dex/code/DalvInsn;I)S

    move-result p0

    invoke-static {p1, p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->write(Lcom/google/dexmaker/dx/util/AnnotatedOutput;S)V

    return-void
.end method
