.class public final Lcom/google/dexmaker/dx/dex/code/form/Form21t;
.super Lcom/google/dexmaker/dx/dex/code/InsnFormat;
.source "Form21t.java"


# static fields
.field public static final THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/form/Form21t;

    invoke-direct {v0}, Lcom/google/dexmaker/dx/dex/code/form/Form21t;-><init>()V

    sput-object v0, Lcom/google/dexmaker/dx/dex/code/form/Form21t;->THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public branchFits(Lcom/google/dexmaker/dx/dex/code/TargetInsn;)Z
    .locals 0

    .line 90
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result p0

    if-eqz p0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->signedFitsInShort(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public codeSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public compatibleRegs(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 1

    .line 80
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 81
    new-instance p1, Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    .line 83
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

    .line 46
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 47
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

    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->branchString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insnCommentString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->branchComment(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCompatible(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Z
    .locals 4

    .line 65
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 67
    instance-of v1, p1, Lcom/google/dexmaker/dx/dex/code/TargetInsn;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-static {v0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/TargetInsn;

    .line 74
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/TargetInsn;->hasTargetOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/form/Form21t;->branchFits(Lcom/google/dexmaker/dx/dex/code/TargetInsn;)Z

    move-result v3

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v2
.end method

.method public writeTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V
    .locals 2

    .line 99
    invoke-virtual {p2}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p0

    .line 100
    move-object v0, p2

    check-cast v0, Lcom/google/dexmaker/dx/dex/code/TargetInsn;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result p0

    invoke-static {p2, p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/google/dexmaker/dx/dex/code/DalvInsn;I)S

    move-result p0

    int-to-short p2, v0

    invoke-static {p1, p0, p2}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->write(Lcom/google/dexmaker/dx/util/AnnotatedOutput;SS)V

    return-void
.end method
