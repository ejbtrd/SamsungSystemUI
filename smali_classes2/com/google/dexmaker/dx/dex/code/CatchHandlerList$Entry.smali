.class public Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;
.super Ljava/lang/Object;
.source "CatchHandlerList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/dx/dex/code/CatchHandlerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final exceptionType:Lcom/google/dexmaker/dx/rop/cst/CstType;

.field private final handler:I


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstType;I)V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    const-string v0, "exceptionType == null"

    .line 186
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    iput p2, p0, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->handler:I

    .line 190
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/google/dexmaker/dx/rop/cst/CstType;

    return-void

    .line 182
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;)I
    .locals 2

    .line 211
    iget v0, p0, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->handler:I

    iget v1, p1, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->handler:I

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 217
    :cond_1
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/google/dexmaker/dx/rop/cst/CstType;

    iget-object p1, p1, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/Constant;->compareTo(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 167
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 202
    instance-of v0, p1, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 203
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getExceptionType()Lcom/google/dexmaker/dx/rop/cst/CstType;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/google/dexmaker/dx/rop/cst/CstType;

    return-object p0
.end method

.method public getHandler()I
    .locals 0

    .line 235
    iget p0, p0, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->handler:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->handler:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstType;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
