.class public final Lcom/google/dexmaker/dx/rop/type/Type;
.super Ljava/lang/Object;
.source "Type.java"

# interfaces
.implements Lcom/google/dexmaker/dx/rop/type/TypeBearer;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/dexmaker/dx/rop/type/TypeBearer;",
        "Ljava/lang/Comparable<",
        "Lcom/google/dexmaker/dx/rop/type/Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANNOTATION:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BOOLEAN:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BOOLEAN_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BOOLEAN_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BYTE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BYTE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final BYTE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CHAR:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CHARACTER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CHAR_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final CLONEABLE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final DOUBLE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final DOUBLE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final DOUBLE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final FLOAT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final FLOAT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final FLOAT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final INT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final INTEGER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final INT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final KNOWN_NULL:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final LONG:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final LONG_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final LONG_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final OBJECT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final OBJECT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final RETURN_ADDRESS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final SERIALIZABLE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final SHORT:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final SHORT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final SHORT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final STRING:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final THROWABLE:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final VOID:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final VOID_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

.field private static final internTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/dexmaker/dx/rop/type/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

.field private final basicType:I

.field private className:Ljava/lang/String;

.field private componentType:Lcom/google/dexmaker/dx/rop/type/Type;

.field private final descriptor:Ljava/lang/String;

.field private initializedType:Lcom/google/dexmaker/dx/rop/type/Type;

.field private final newAt:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 34
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    .line 74
    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v1, "Z"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 77
    new-instance v1, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v2, "B"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 80
    new-instance v2, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v3, "C"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 83
    new-instance v3, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v4, "D"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 86
    new-instance v4, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v5, "F"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 89
    new-instance v5, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v6, "I"

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/dexmaker/dx/rop/type/Type;->INT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 92
    new-instance v6, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v7, "J"

    const/4 v8, 0x7

    invoke-direct {v6, v7, v8}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/dexmaker/dx/rop/type/Type;->LONG:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 95
    new-instance v7, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v8, "S"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 98
    new-instance v8, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "V"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 101
    new-instance v8, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "<null>"

    const/16 v10, 0x9

    invoke-direct {v8, v9, v10}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->KNOWN_NULL:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 104
    new-instance v8, Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "<addr>"

    const/16 v10, 0xa

    invoke-direct {v8, v9, v10}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 111
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 112
    invoke-static {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 113
    invoke-static {v2}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 114
    invoke-static {v3}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 115
    invoke-static {v4}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 116
    invoke-static {v5}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 117
    invoke-static {v6}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 118
    invoke-static {v7}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v8, "Ljava/lang/annotation/Annotation;"

    .line 129
    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v8

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->ANNOTATION:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v8, "Ljava/lang/Class;"

    .line 133
    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v8

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v8, "Ljava/lang/Cloneable;"

    .line 136
    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v8

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->CLONEABLE:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v8, "Ljava/lang/Object;"

    .line 139
    invoke-static {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v8

    sput-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/io/Serializable;"

    .line 142
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->SERIALIZABLE:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/String;"

    .line 145
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->STRING:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Throwable;"

    .line 148
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->THROWABLE:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Boolean;"

    .line 155
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Byte;"

    .line 162
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Character;"

    .line 169
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Double;"

    .line 176
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Float;"

    .line 183
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Integer;"

    .line 190
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->INTEGER_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Long;"

    .line 197
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->LONG_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Short;"

    .line 204
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Void;"

    .line 211
    invoke-static {v9}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v9

    sput-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->VOID_CLASS:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 214
    invoke-virtual {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 217
    invoke-virtual {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 220
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 223
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 226
    invoke-virtual {v4}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 229
    invoke-virtual {v5}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->INT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 232
    invoke-virtual {v6}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->LONG_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 235
    invoke-virtual {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 238
    invoke-virtual {v7}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT_ARRAY:Lcom/google/dexmaker/dx/rop/type/Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 460
    invoke-direct {p0, p1, p2, v0}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "descriptor == null"

    .line 431
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_1

    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    .line 442
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 443
    iput p2, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    .line 444
    iput p3, p0, Lcom/google/dexmaker/dx/rop/type/Type;->newAt:I

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 446
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 447
    iput-object p1, p0, Lcom/google/dexmaker/dx/rop/type/Type;->initializedType:Lcom/google/dexmaker/dx/rop/type/Type;

    return-void

    .line 439
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "newAt < -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 435
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad basicType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 7

    .line 296
    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    monitor-enter v0

    .line 297
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/rop/type/Type;

    .line 298
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 305
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x5b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 319
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    .line 328
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x4c

    if-ne v0, v4, :cond_6

    sub-int/2addr v3, v2

    .line 329
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_6

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_5

    .line 345
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_4

    const/16 v6, 0x29

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_2

    if-eq v5, v4, :cond_4

    if-eq v5, v1, :cond_4

    goto :goto_1

    :cond_2
    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_3

    add-int/lit8 v5, v0, -0x1

    .line 355
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_5
    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Type;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 366
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    .line 331
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "descriptor is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 298
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static internReturnType(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 1

    :try_start_0
    const-string v0, "V"

    .line 382
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    sget-object p0, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 391
    :cond_0
    invoke-static {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    .line 388
    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 3

    .line 852
    sget-object v0, Lcom/google/dexmaker/dx/rop/type/Type;->internTable:Ljava/util/HashMap;

    monitor-enter v0

    .line 853
    :try_start_0
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/dexmaker/dx/rop/type/Type;

    if-eqz v2, :cond_0

    .line 856
    monitor-exit v0

    return-object v2

    .line 858
    :cond_0
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 860
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public compareTo(Lcom/google/dexmaker/dx/rop/type/Type;)I
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/google/dexmaker/dx/rop/type/Type;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/type/Type;->compareTo(Lcom/google/dexmaker/dx/rop/type/Type;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 474
    :cond_0
    instance-of v0, p1, Lcom/google/dexmaker/dx/rop/type/Type;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 478
    :cond_1
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    check-cast p1, Lcom/google/dexmaker/dx/rop/type/Type;

    iget-object p1, p1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getArrayType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 3

    .line 780
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Lcom/google/dexmaker/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->putIntern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 784
    :cond_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->arrayType:Lcom/google/dexmaker/dx/rop/type/Type;

    return-object p0
.end method

.method public getBasicFrameType()I
    .locals 2

    .line 549
    iget p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    return v1
.end method

.method public getBasicType()I
    .locals 0

    .line 544
    iget p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    return p0
.end method

.method public getCategory()I
    .locals 1

    .line 610
    iget p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 586
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    goto :goto_0

    .line 587
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not an object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getComponentType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 3

    .line 794
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    if-nez v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    goto :goto_0

    .line 796
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not an array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->componentType:Lcom/google/dexmaker/dx/rop/type/Type;

    return-object p0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/google/dexmaker/dx/rop/type/Type;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isArray()Z
    .locals 2

    .line 721
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x5b

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCategory2()Z
    .locals 1

    .line 646
    iget p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isIntlike()Z
    .locals 2

    .line 664
    iget p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public isReference()Z
    .locals 1

    .line 710
    iget p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .line 500
    iget v0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 511
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object p0

    .line 514
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->getComponentType()Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const-string v1, "."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "short"

    return-object p0

    :pswitch_2
    const-string p0, "long"

    return-object p0

    :pswitch_3
    const-string p0, "int"

    return-object p0

    :pswitch_4
    const-string p0, "float"

    return-object p0

    :pswitch_5
    const-string p0, "double"

    return-object p0

    :pswitch_6
    const-string p0, "char"

    return-object p0

    :pswitch_7
    const-string p0, "byte"

    return-object p0

    :pswitch_8
    const-string p0, "boolean"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "void"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object p0
.end method
