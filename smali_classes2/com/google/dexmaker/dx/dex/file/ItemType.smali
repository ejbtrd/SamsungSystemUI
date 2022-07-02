.class public final enum Lcom/google/dexmaker/dx/dex/file/ItemType;
.super Ljava/lang/Enum;
.source "ItemType.java"

# interfaces
.implements Lcom/google/dexmaker/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/dexmaker/dx/dex/file/ItemType;",
        ">;",
        "Lcom/google/dexmaker/dx/util/ToHuman;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_LIST:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DATA_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DEF_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_CODE_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_DEBUG_INFO_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_ENCODED_ARRAY_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_EXCEPTION_HANDLER_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_FIELD_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_HEADER_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_LIST:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_METHOD_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_PROTO_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_DATA_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_LIST:Lcom/google/dexmaker/dx/dex/file/ItemType;


# instance fields
.field private final humanName:Ljava/lang/String;

.field private final mapValue:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 25
    new-instance v0, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v1, "TYPE_HEADER_ITEM"

    const/4 v2, 0x0

    const-string v3, "header_item"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 26
    new-instance v1, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v3, "TYPE_STRING_ID_ITEM"

    const/4 v4, 0x1

    const-string/jumbo v5, "string_id_item"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 27
    new-instance v3, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v5, "TYPE_TYPE_ID_ITEM"

    const/4 v6, 0x2

    const-string/jumbo v7, "type_id_item"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 28
    new-instance v5, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v7, "TYPE_PROTO_ID_ITEM"

    const/4 v8, 0x3

    const-string/jumbo v9, "proto_id_item"

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 29
    new-instance v7, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v9, "TYPE_FIELD_ID_ITEM"

    const/4 v10, 0x4

    const-string v11, "field_id_item"

    invoke-direct {v7, v9, v10, v10, v11}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 30
    new-instance v9, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v11, "TYPE_METHOD_ID_ITEM"

    const/4 v12, 0x5

    const-string/jumbo v13, "method_id_item"

    invoke-direct {v9, v11, v12, v12, v13}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 31
    new-instance v11, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v13, "TYPE_CLASS_DEF_ITEM"

    const/4 v14, 0x6

    const-string v15, "class_def_item"

    invoke-direct {v11, v13, v14, v14, v15}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 32
    new-instance v13, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v15, "TYPE_MAP_LIST"

    const/4 v14, 0x7

    const/16 v12, 0x1000

    const-string/jumbo v10, "map_list"

    invoke-direct {v13, v15, v14, v12, v10}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 33
    new-instance v10, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_TYPE_LIST"

    const/16 v15, 0x8

    const/16 v14, 0x1001

    const-string/jumbo v8, "type_list"

    invoke-direct {v10, v12, v15, v14, v8}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 34
    new-instance v8, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_ANNOTATION_SET_REF_LIST"

    const/16 v14, 0x9

    const/16 v15, 0x1002

    const-string v6, "annotation_set_ref_list"

    invoke-direct {v8, v12, v14, v15, v6}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 35
    new-instance v6, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_ANNOTATION_SET_ITEM"

    const/16 v15, 0xa

    const/16 v14, 0x1003

    const-string v4, "annotation_set_item"

    invoke-direct {v6, v12, v15, v14, v4}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 36
    new-instance v4, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_CLASS_DATA_ITEM"

    const/16 v14, 0xb

    const/16 v15, 0x2000

    const-string v2, "class_data_item"

    invoke-direct {v4, v12, v14, v15, v2}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 37
    new-instance v2, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_CODE_ITEM"

    const/16 v15, 0xc

    const/16 v14, 0x2001

    move-object/from16 v16, v4

    const-string v4, "code_item"

    invoke-direct {v2, v12, v15, v14, v4}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 38
    new-instance v4, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_STRING_DATA_ITEM"

    const/16 v14, 0xd

    const/16 v15, 0x2002

    move-object/from16 v17, v2

    const-string/jumbo v2, "string_data_item"

    invoke-direct {v4, v12, v14, v15, v2}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 39
    new-instance v2, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_DEBUG_INFO_ITEM"

    const/16 v15, 0xe

    const/16 v14, 0x2003

    move-object/from16 v18, v4

    const-string v4, "debug_info_item"

    invoke-direct {v2, v12, v15, v14, v4}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 40
    new-instance v4, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_ANNOTATION_ITEM"

    const/16 v14, 0xf

    const/16 v15, 0x2004

    move-object/from16 v19, v2

    const-string v2, "annotation_item"

    invoke-direct {v4, v12, v14, v15, v2}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 41
    new-instance v2, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_ENCODED_ARRAY_ITEM"

    const/16 v15, 0x10

    const/16 v14, 0x2005

    move-object/from16 v20, v4

    const-string v4, "encoded_array_item"

    invoke-direct {v2, v12, v15, v14, v4}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 42
    new-instance v4, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    const/16 v14, 0x11

    const/16 v15, 0x2006

    move-object/from16 v21, v2

    const-string v2, "annotations_directory_item"

    invoke-direct {v4, v12, v14, v15, v2}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 43
    new-instance v2, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_MAP_ITEM"

    const/16 v15, 0x12

    const/4 v14, -0x1

    move-object/from16 v22, v4

    const-string/jumbo v4, "map_item"

    invoke-direct {v2, v12, v15, v14, v4}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 44
    new-instance v4, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_TYPE_ITEM"

    const/16 v15, 0x13

    move-object/from16 v23, v2

    const-string/jumbo v2, "type_item"

    invoke-direct {v4, v12, v15, v14, v2}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_TYPE_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 45
    new-instance v2, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_EXCEPTION_HANDLER_ITEM"

    const/16 v15, 0x14

    move-object/from16 v24, v4

    const-string v4, "exception_handler_item"

    invoke-direct {v2, v12, v15, v14, v4}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_EXCEPTION_HANDLER_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    .line 46
    new-instance v4, Lcom/google/dexmaker/dx/dex/file/ItemType;

    const-string v12, "TYPE_ANNOTATION_SET_REF_ITEM"

    const/16 v15, 0x15

    move-object/from16 v25, v2

    const-string v2, "annotation_set_ref_item"

    invoke-direct {v4, v12, v15, v14, v2}, Lcom/google/dexmaker/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    const/16 v2, 0x16

    new-array v2, v2, [Lcom/google/dexmaker/dx/dex/file/ItemType;

    const/4 v12, 0x0

    aput-object v0, v2, v12

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v8, v2, v0

    const/16 v0, 0xa

    aput-object v6, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    const/16 v0, 0x11

    aput-object v22, v2, v0

    const/16 v0, 0x12

    aput-object v23, v2, v0

    const/16 v0, 0x13

    aput-object v24, v2, v0

    const/16 v0, 0x14

    aput-object v25, v2, v0

    const/16 v0, 0x15

    aput-object v4, v2, v0

    .line 24
    sput-object v2, Lcom/google/dexmaker/dx/dex/file/ItemType;->$VALUES:[Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->mapValue:I

    .line 65
    iput-object p4, p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    const-string p1, "_item"

    .line 69
    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/16 p1, 0x5f

    const/16 p2, 0x20

    .line 72
    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 1

    .line 24
    const-class v0, Lcom/google/dexmaker/dx/dex/file/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method

.method public static values()[Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/dexmaker/dx/dex/file/ItemType;->$VALUES:[Lcom/google/dexmaker/dx/dex/file/ItemType;

    invoke-virtual {v0}, [Lcom/google/dexmaker/dx/dex/file/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object v0
.end method


# virtual methods
.method public getMapValue()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->mapValue:I

    return p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-object p0
.end method
