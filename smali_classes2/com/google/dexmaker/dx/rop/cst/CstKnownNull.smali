.class public final Lcom/google/dexmaker/dx/rop/cst/CstKnownNull;
.super Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;
.source "CstKnownNull.java"


# static fields
.field public static final THE_ONE:Lcom/google/dexmaker/dx/rop/cst/CstKnownNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/dexmaker/dx/rop/cst/CstKnownNull;

    invoke-direct {v0}, Lcom/google/dexmaker/dx/rop/cst/CstKnownNull;-><init>()V

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/google/dexmaker/dx/rop/cst/CstKnownNull;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteralBits;-><init>()V

    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/google/dexmaker/dx/rop/cst/Constant;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    instance-of p0, p1, Lcom/google/dexmaker/dx/rop/cst/CstKnownNull;

    return p0
.end method

.method public fitsInInt()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getIntBits()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLongBits()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 0

    .line 62
    sget-object p0, Lcom/google/dexmaker/dx/rop/type/Type;->KNOWN_NULL:Lcom/google/dexmaker/dx/rop/type/Type;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const p0, 0x4466757a

    return p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "null"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "known-null"

    return-object p0
.end method

.method public typeName()Ljava/lang/String;
    .locals 0

    const-string p0, "known-null"

    return-object p0
.end method
