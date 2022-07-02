.class public final Lcom/google/dexmaker/dx/dex/code/LocalEnd;
.super Lcom/google/dexmaker/dx/dex/code/ZeroSizeInsn;
.source "LocalEnd.java"


# instance fields
.field private final local:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;)V

    const-string p1, "local == null"

    .line 51
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/code/LocalEnd;->local:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalEnd;->local:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocal()Lcom/google/dexmaker/dx/rop/code/RegisterSpec;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalEnd;->local:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    return-object p0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .locals 1

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local-end "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalEnd;->local:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-static {p0}, Lcom/google/dexmaker/dx/dex/code/LocalStart;->localString(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withRegisterOffset(I)Lcom/google/dexmaker/dx/dex/code/DalvInsn;
    .locals 2

    .line 60
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/LocalEnd;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalEnd;->local:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/dexmaker/dx/dex/code/LocalEnd;-><init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public withRegisters(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Lcom/google/dexmaker/dx/dex/code/DalvInsn;
    .locals 1

    .line 66
    new-instance p1, Lcom/google/dexmaker/dx/dex/code/LocalEnd;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    move-result-object v0

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalEnd;->local:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-direct {p1, v0, p0}, Lcom/google/dexmaker/dx/dex/code/LocalEnd;-><init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    return-object p1
.end method
