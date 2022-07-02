.class public final Lcom/google/dexmaker/dx/rop/cst/CstChar;
.super Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;
.source "CstChar.java"


# static fields
.field public static final VALUE_0:Lcom/google/dexmaker/dx/rop/cst/CstChar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstChar;->make(C)Lcom/google/dexmaker/dx/rop/cst/CstChar;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstChar;->VALUE_0:Lcom/google/dexmaker/dx/rop/cst/CstChar;

    return-void
.end method

.method private constructor <init>(C)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;-><init>(I)V

    return-void
.end method

.method public static make(C)Lcom/google/dexmaker/dx/rop/cst/CstChar;
    .locals 1

    .line 37
    new-instance v0, Lcom/google/dexmaker/dx/rop/cst/CstChar;

    invoke-direct {v0, p0}, Lcom/google/dexmaker/dx/rop/cst/CstChar;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 0

    .line 77
    sget-object p0, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR:Lcom/google/dexmaker/dx/rop/type/Type;

    return-object p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result p0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "char{0x"

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

    const-string p0, "char"

    return-object p0
.end method
