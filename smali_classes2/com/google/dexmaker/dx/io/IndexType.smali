.class public final enum Lcom/google/dexmaker/dx/io/IndexType;
.super Ljava/lang/Enum;
.source "IndexType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/dexmaker/dx/io/IndexType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/dexmaker/dx/io/IndexType;

.field public static final enum FIELD_OFFSET:Lcom/google/dexmaker/dx/io/IndexType;

.field public static final enum FIELD_REF:Lcom/google/dexmaker/dx/io/IndexType;

.field public static final enum INLINE_METHOD:Lcom/google/dexmaker/dx/io/IndexType;

.field public static final enum METHOD_REF:Lcom/google/dexmaker/dx/io/IndexType;

.field public static final enum NONE:Lcom/google/dexmaker/dx/io/IndexType;

.field public static final enum STRING_REF:Lcom/google/dexmaker/dx/io/IndexType;

.field public static final enum TYPE_REF:Lcom/google/dexmaker/dx/io/IndexType;

.field public static final enum UNKNOWN:Lcom/google/dexmaker/dx/io/IndexType;

.field public static final enum VARIES:Lcom/google/dexmaker/dx/io/IndexType;

.field public static final enum VTABLE_OFFSET:Lcom/google/dexmaker/dx/io/IndexType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/google/dexmaker/dx/io/IndexType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/dx/io/IndexType;->UNKNOWN:Lcom/google/dexmaker/dx/io/IndexType;

    .line 27
    new-instance v1, Lcom/google/dexmaker/dx/io/IndexType;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/dexmaker/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/dexmaker/dx/io/IndexType;->NONE:Lcom/google/dexmaker/dx/io/IndexType;

    .line 30
    new-instance v3, Lcom/google/dexmaker/dx/io/IndexType;

    const-string v5, "VARIES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/dexmaker/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/dexmaker/dx/io/IndexType;->VARIES:Lcom/google/dexmaker/dx/io/IndexType;

    .line 33
    new-instance v5, Lcom/google/dexmaker/dx/io/IndexType;

    const-string v7, "TYPE_REF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/dexmaker/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/dexmaker/dx/io/IndexType;->TYPE_REF:Lcom/google/dexmaker/dx/io/IndexType;

    .line 36
    new-instance v7, Lcom/google/dexmaker/dx/io/IndexType;

    const-string v9, "STRING_REF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/dexmaker/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/dexmaker/dx/io/IndexType;->STRING_REF:Lcom/google/dexmaker/dx/io/IndexType;

    .line 39
    new-instance v9, Lcom/google/dexmaker/dx/io/IndexType;

    const-string v11, "METHOD_REF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/dexmaker/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/dexmaker/dx/io/IndexType;->METHOD_REF:Lcom/google/dexmaker/dx/io/IndexType;

    .line 42
    new-instance v11, Lcom/google/dexmaker/dx/io/IndexType;

    const-string v13, "FIELD_REF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/dexmaker/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/dexmaker/dx/io/IndexType;->FIELD_REF:Lcom/google/dexmaker/dx/io/IndexType;

    .line 45
    new-instance v13, Lcom/google/dexmaker/dx/io/IndexType;

    const-string v15, "INLINE_METHOD"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/dexmaker/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/dexmaker/dx/io/IndexType;->INLINE_METHOD:Lcom/google/dexmaker/dx/io/IndexType;

    .line 48
    new-instance v15, Lcom/google/dexmaker/dx/io/IndexType;

    const-string v14, "VTABLE_OFFSET"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/dexmaker/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/dexmaker/dx/io/IndexType;->VTABLE_OFFSET:Lcom/google/dexmaker/dx/io/IndexType;

    .line 51
    new-instance v14, Lcom/google/dexmaker/dx/io/IndexType;

    const-string v12, "FIELD_OFFSET"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/google/dexmaker/dx/io/IndexType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/dexmaker/dx/io/IndexType;->FIELD_OFFSET:Lcom/google/dexmaker/dx/io/IndexType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/google/dexmaker/dx/io/IndexType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 22
    sput-object v12, Lcom/google/dexmaker/dx/io/IndexType;->$VALUES:[Lcom/google/dexmaker/dx/io/IndexType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/dexmaker/dx/io/IndexType;
    .locals 1

    .line 22
    const-class v0, Lcom/google/dexmaker/dx/io/IndexType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/io/IndexType;

    return-object p0
.end method

.method public static values()[Lcom/google/dexmaker/dx/io/IndexType;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/dexmaker/dx/io/IndexType;->$VALUES:[Lcom/google/dexmaker/dx/io/IndexType;

    invoke-virtual {v0}, [Lcom/google/dexmaker/dx/io/IndexType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/dexmaker/dx/io/IndexType;

    return-object v0
.end method
