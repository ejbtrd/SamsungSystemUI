.class public final Lcom/google/dexmaker/dx/dex/code/form/Form3rc;
.super Lcom/google/dexmaker/dx/dex/code/InsnFormat;
.source "Form3rc.java"


# static fields
.field public static final THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/form/Form3rc;

    invoke-direct {v0}, Lcom/google/dexmaker/dx/dex/code/form/Form3rc;-><init>()V

    sput-object v0, Lcom/google/dexmaker/dx/dex/code/form/Form3rc;->THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public insnArgString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 1

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->regRangeString(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->cstString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insnCommentString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 55
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->cstComment(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public isCompatible(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Z
    .locals 2

    .line 70
    instance-of p0, p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 74
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    .line 75
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getIndex()I

    move-result p0

    .line 76
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getConstant()Lcom/google/dexmaker/dx/rop/cst/Constant;

    move-result-object v1

    .line 78
    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInShort(I)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 82
    :cond_1
    instance-of p0, v1, Lcom/google/dexmaker/dx/rop/cst/CstMethodRef;

    if-nez p0, :cond_2

    instance-of p0, v1, Lcom/google/dexmaker/dx/rop/cst/CstType;

    if-nez p0, :cond_2

    return v0

    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    .line 90
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->isRegListSequential(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInShort(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result p0

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public writeTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V
    .locals 3

    .line 99
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 100
    move-object v0, p2

    check-cast v0, Lcom/google/dexmaker/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/code/CstInsn;->getIndex()I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result p0

    .line 104
    invoke-static {p2, p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/google/dexmaker/dx/dex/code/DalvInsn;I)S

    move-result p0

    int-to-short p2, v0

    int-to-short v0, v2

    invoke-static {p1, p0, p2, v0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->write(Lcom/google/dexmaker/dx/util/AnnotatedOutput;SSS)V

    return-void
.end method
