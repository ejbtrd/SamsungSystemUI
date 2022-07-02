.class public abstract Lcom/google/dexmaker/dx/dex/code/VariableSizeInsn;
.super Lcom/google/dexmaker/dx/dex/code/DalvInsn;
.source "VariableSizeInsn.java"


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/google/dexmaker/dx/dex/code/Dops;->SPECIAL_FORMAT:Lcom/google/dexmaker/dx/dex/code/Dop;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;-><init>(Lcom/google/dexmaker/dx/dex/code/Dop;Lcom/google/dexmaker/dx/rop/code/SourcePosition;Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)V

    return-void
.end method


# virtual methods
.method public final withOpcode(Lcom/google/dexmaker/dx/dex/code/Dop;)Lcom/google/dexmaker/dx/dex/code/DalvInsn;
    .locals 0

    .line 41
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final withRegisterOffset(I)Lcom/google/dexmaker/dx/dex/code/DalvInsn;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getRegisters()Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->withRegisters(Lcom/google/dexmaker/dx/rop/code/RegisterSpecList;)Lcom/google/dexmaker/dx/dex/code/DalvInsn;

    move-result-object p0

    return-object p0
.end method
