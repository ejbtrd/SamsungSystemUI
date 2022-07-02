.class public final Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;
.super Lcom/google/dexmaker/dx/dex/code/ZeroSizeInsn;
.source "LocalSnapshot.java"


# instance fields
.field private final locals:Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;)V

    const-string p1, "locals == null"

    .line 44
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;->locals:Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;

    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;->locals:Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocals()Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;->locals:Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;

    return-object p0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .locals 4

    .line 80
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;->locals:Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;->size()I

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;->locals:Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v0

    .line 82
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 p1, p1, 0x28

    add-int/lit8 p1, p1, 0x64

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string p1, "local-snapshot"

    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 87
    iget-object v2, p0, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;->locals:Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v2, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;->get(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "\n  "

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-static {v2}, Lcom/google/dexmaker/dx/dex/code/LocalStart;->localString(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withRegisterOffset(I)Lcom/google/dexmaker/dx/dex/code/DalvInsn;
    .locals 2

    .line 53
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;->locals:Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;->withOffset(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;-><init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;)V

    return-object v0
.end method

.method public withRegisters(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Lcom/google/dexmaker/dx/dex/code/DalvInsn;
    .locals 1

    .line 59
    new-instance p1, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v0

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;->locals:Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;

    invoke-direct {p1, v0, p0}, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;-><init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;)V

    return-object p1
.end method
