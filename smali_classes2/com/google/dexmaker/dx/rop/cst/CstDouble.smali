.class public final Lcom/google/dexmaker/dx/rop/cst/CstDouble;
.super Lcom/google/dexmaker/dx/rop/cst/CstLiteral64;
.source "CstDouble.java"


# static fields
.field public static final VALUE_0:Lcom/google/dexmaker/dx/rop/cst/CstDouble;

.field public static final VALUE_1:Lcom/google/dexmaker/dx/rop/cst/CstDouble;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/google/dexmaker/dx/rop/cst/CstDouble;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/rop/cst/CstDouble;-><init>(J)V

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstDouble;->VALUE_0:Lcom/google/dexmaker/dx/rop/cst/CstDouble;

    .line 32
    new-instance v0, Lcom/google/dexmaker/dx/rop/cst/CstDouble;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/rop/cst/CstDouble;-><init>(J)V

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstDouble;->VALUE_1:Lcom/google/dexmaker/dx/rop/cst/CstDouble;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral64;-><init>(J)V

    return-void
.end method

.method public static make(J)Lcom/google/dexmaker/dx/rop/cst/CstDouble;
    .locals 1

    .line 46
    new-instance v0, Lcom/google/dexmaker/dx/rop/cst/CstDouble;

    invoke-direct {v0, p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstDouble;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 0

    .line 68
    sget-object p0, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE:Lcom/google/dexmaker/dx/rop/type/Type;

    return-object p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral64;->getLongBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral64;->getLongBits()J

    move-result-wide v0

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "double{0x"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/google/dexmaker/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeName()Ljava/lang/String;
    .locals 0

    const-string p0, "double"

    return-object p0
.end method
