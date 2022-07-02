.class public final Lcom/google/dexmaker/dx/rop/cst/CstShort;
.super Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;
.source "CstShort.java"


# static fields
.field public static final VALUE_0:Lcom/google/dexmaker/dx/rop/cst/CstShort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstShort;->make(S)Lcom/google/dexmaker/dx/rop/cst/CstShort;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstShort;->VALUE_0:Lcom/google/dexmaker/dx/rop/cst/CstShort;

    return-void
.end method

.method private constructor <init>(S)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;-><init>(I)V

    return-void
.end method

.method public static make(S)Lcom/google/dexmaker/dx/rop/cst/CstShort;
    .locals 1

    .line 38
    new-instance v0, Lcom/google/dexmaker/dx/rop/cst/CstShort;

    invoke-direct {v0, p0}, Lcom/google/dexmaker/dx/rop/cst/CstShort;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 0

    .line 78
    sget-object p0, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT:Lcom/google/dexmaker/dx/rop/type/Type;

    return-object p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result p0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "short{0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/dexmaker/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "short"

    return-object p0
.end method
