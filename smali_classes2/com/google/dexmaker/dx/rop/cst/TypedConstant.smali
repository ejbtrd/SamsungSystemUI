.class public abstract Lcom/google/dexmaker/dx/rop/cst/TypedConstant;
.super Lcom/google/dexmaker/dx/rop/cst/Constant;
.source "TypedConstant.java"

# interfaces
.implements Lcom/google/dexmaker/dx/rop/type/TypeBearer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/dexmaker/dx/rop/cst/Constant;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBasicFrameType()I
    .locals 0

    .line 42
    invoke-interface {p0}, Lcom/google/dexmaker/dx/rop/type/TypeBearer;->getType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->getBasicFrameType()I

    move-result p0

    return p0
.end method

.method public final getBasicType()I
    .locals 0

    .line 37
    invoke-interface {p0}, Lcom/google/dexmaker/dx/rop/type/TypeBearer;->getType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->getBasicType()I

    move-result p0

    return p0
.end method
