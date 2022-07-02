.class public final Lcom/google/dexmaker/dx/rop/cst/CstArray;
.super Lcom/google/dexmaker/dx/rop/cst/Constant;
.source "CstArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/dx/rop/cst/CstArray$List;
    }
.end annotation


# instance fields
.field private final list:Lcom/google/dexmaker/dx/rop/cst/CstArray$List;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstArray$List;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/google/dexmaker/dx/rop/cst/Constant;-><init>()V

    const-string v0, "list == null"

    .line 36
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/util/MutabilityControl;->throwIfMutable()V

    .line 41
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/cst/CstArray;->list:Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstArray;->list:Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstArray;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstArray;->list:Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstArray$List;->compareTo(Lcom/google/dexmaker/dx/rop/cst/CstArray$List;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 47
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/cst/CstArray;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstArray;->list:Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    check-cast p1, Lcom/google/dexmaker/dx/rop/cst/CstArray;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/cst/CstArray;->list:Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getList()Lcom/google/dexmaker/dx/rop/cst/CstArray$List;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstArray;->list:Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstArray;->list:Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->hashCode()I

    move-result p0

    return p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 3

    .line 86
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstArray;->list:Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    const-string/jumbo v0, "{"

    const-string v1, ", "

    const-string/jumbo v2, "}"

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/util/FixedSizeList;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/cst/CstArray;->list:Lcom/google/dexmaker/dx/rop/cst/CstArray$List;

    const-string v0, "array{"

    const-string v1, ", "

    const-string/jumbo v2, "}"

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/dexmaker/dx/util/FixedSizeList;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeName()Ljava/lang/String;
    .locals 0

    const-string p0, "array"

    return-object p0
.end method
