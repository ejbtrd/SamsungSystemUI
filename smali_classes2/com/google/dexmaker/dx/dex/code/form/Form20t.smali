.class public final Lcom/google/dexmaker/dx/dex/code/form/Form20t;
.super Lcom/google/dexmaker/dx/dex/code/InsnFormat;
.source "Form20t.java"


# static fields
.field public static final THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/form/Form20t;

    invoke-direct {v0}, Lcom/google/dexmaker/dx/dex/code/form/Form20t;-><init>()V

    sput-object v0, Lcom/google/dexmaker/dx/dex/code/form/Form20t;->THE_ONE:Lcom/google/dexmaker/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public branchFits(Lcom/google/dexmaker/dx/dex/code/TargetInsn;)Z
    .locals 0

    .line 73
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result p0

    if-eqz p0, :cond_0

    .line 76
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

.method public insnArgString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->branchString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insnCommentString(Lcom/google/dexmaker/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->branchComment(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCompatible(Lcom/google/dexmaker/dx/dex/code/DalvInsn;)Z
    .locals 1

    .line 61
    instance-of v0, p1, Lcom/google/dexmaker/dx/dex/code/TargetInsn;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/TargetInsn;

    .line 67
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/TargetInsn;->hasTargetOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/form/Form20t;->branchFits(Lcom/google/dexmaker/dx/dex/code/TargetInsn;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public writeTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;Lcom/google/dexmaker/dx/dex/code/DalvInsn;)V
    .locals 1

    .line 82
    move-object p0, p2

    check-cast p0, Lcom/google/dexmaker/dx/dex/code/TargetInsn;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result p0

    const/4 v0, 0x0

    .line 84
    invoke-static {p2, v0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/google/dexmaker/dx/dex/code/DalvInsn;I)S

    move-result p2

    int-to-short p0, p0

    invoke-static {p1, p2, p0}, Lcom/google/dexmaker/dx/dex/code/InsnFormat;->write(Lcom/google/dexmaker/dx/util/AnnotatedOutput;SS)V

    return-void
.end method
