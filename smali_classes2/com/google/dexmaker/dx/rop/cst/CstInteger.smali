.class public final Lcom/google/dexmaker/dx/rop/cst/CstInteger;
.super Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;
.source "CstInteger.java"


# static fields
.field public static final VALUE_0:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

.field public static final VALUE_1:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

.field public static final VALUE_2:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

.field public static final VALUE_3:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

.field public static final VALUE_4:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

.field public static final VALUE_5:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

.field public static final VALUE_M1:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

.field private static final cache:[Lcom/google/dexmaker/dx/rop/cst/CstInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1ff

    new-array v0, v0, [Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    .line 28
    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->cache:[Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    const/4 v0, -0x1

    .line 31
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->make(I)Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->VALUE_M1:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->make(I)Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->VALUE_0:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->make(I)Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->VALUE_1:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    const/4 v0, 0x2

    .line 40
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->make(I)Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->VALUE_2:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    const/4 v0, 0x3

    .line 43
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->make(I)Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->VALUE_3:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    const/4 v0, 0x4

    .line 46
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->make(I)Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->VALUE_4:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    const/4 v0, 0x5

    .line 49
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->make(I)Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->VALUE_5:Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;-><init>(I)V

    return-void
.end method

.method public static make(I)Lcom/google/dexmaker/dx/rop/cst/CstInteger;
    .locals 4

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    .line 64
    sget-object v1, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->cache:[Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 65
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/cst/CstInteger;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    .line 71
    :cond_0
    new-instance v2, Lcom/google/dexmaker/dx/rop/cst/CstInteger;

    invoke-direct {v2, p0}, Lcom/google/dexmaker/dx/rop/cst/CstInteger;-><init>(I)V

    .line 72
    aput-object v2, v1, v0

    return-object v2
.end method


# virtual methods
.method public getType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 0

    .line 94
    sget-object p0, Lcom/google/dexmaker/dx/rop/type/Type;->INT:Lcom/google/dexmaker/dx/rop/type/Type;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result p0

    return p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstLiteral32;->getIntBits()I

    move-result p0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "int{0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

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

    const-string p0, "int"

    return-object p0
.end method
