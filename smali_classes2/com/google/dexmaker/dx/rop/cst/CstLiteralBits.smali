.class public abstract Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;
.super Lcom/google/dexmaker/dx/rop/cst/TypedConstant;
.source "CstLiteralBits.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/dexmaker/dx/rop/cst/TypedConstant;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fitsInInt()Z
.end method

.method public abstract getIntBits()I
.end method

.method public abstract getLongBits()J
.end method
