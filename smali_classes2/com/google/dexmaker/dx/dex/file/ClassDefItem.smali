.class public final Lcom/google/dexmaker/dx/dex/file/ClassDefItem;
.super Lcom/google/dexmaker/dx/dex/file/IndexedItem;
.source "ClassDefItem.java"


# instance fields
.field private final accessFlags:I

.field private annotationsDirectory:Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

.field private final classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

.field private interfaces:Lcom/google/dexmaker/dx/dex/file/TypeListItem;

.field private final sourceFile:Lcom/google/dexmaker/dx/rop/cst/CstString;

.field private staticValuesItem:Lcom/google/dexmaker/dx/dex/file/EncodedArrayItem;

.field private final superclass:Lcom/google/dexmaker/dx/rop/cst/CstType;

.field private final thisClass:Lcom/google/dexmaker/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstType;ILcom/google/dexmaker/dx/rop/cst/CstType;Lcom/google/dexmaker/dx/rop/type/TypeList;Lcom/google/dexmaker/dx/rop/cst/CstString;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;-><init>()V

    const-string/jumbo v0, "thisClass == null"

    .line 91
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "interfaces == null"

    .line 100
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->thisClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    .line 104
    iput p2, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->accessFlags:I

    .line 105
    iput-object p3, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->superclass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    .line 106
    invoke-interface {p4}, Lcom/google/dexmaker/dx/rop/type/TypeList;->size()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/dexmaker/dx/dex/file/TypeListItem;

    invoke-direct {p2, p4}, Lcom/google/dexmaker/dx/dex/file/TypeListItem;-><init>(Lcom/google/dexmaker/dx/rop/type/TypeList;)V

    :goto_0
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->interfaces:Lcom/google/dexmaker/dx/dex/file/TypeListItem;

    .line 108
    iput-object p5, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->sourceFile:Lcom/google/dexmaker/dx/rop/cst/CstString;

    .line 109
    new-instance p2, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    invoke-direct {p2, p1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstType;)V

    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    .line 110
    iput-object p3, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/google/dexmaker/dx/dex/file/EncodedArrayItem;

    .line 111
    new-instance p1, Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

    invoke-direct {p1}, Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;-><init>()V

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 6

    .line 129
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getTypeIds()Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getByteData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    move-result-object v1

    .line 131
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getWordData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getTypeLists()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    move-result-object v3

    .line 133
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStringIds()Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    move-result-object v4

    .line 135
    iget-object v5, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->thisClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {v0, v5}, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstType;)Lcom/google/dexmaker/dx/dex/file/TypeIdItem;

    .line 137
    iget-object v5, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    invoke-virtual {v5}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getClassData()Lcom/google/dexmaker/dx/dex/file/MixedItemSection;

    move-result-object p1

    .line 139
    iget-object v5, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    invoke-virtual {p1, v5}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->add(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)V

    .line 141
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->getStaticValuesConstant()Lcom/google/dexmaker/dx/rop/cst/CstArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    new-instance v5, Lcom/google/dexmaker/dx/dex/file/EncodedArrayItem;

    invoke-direct {v5, p1}, Lcom/google/dexmaker/dx/dex/file/EncodedArrayItem;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstArray;)V

    invoke-virtual {v1, v5}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->intern(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/google/dexmaker/dx/dex/file/EncodedArrayItem;

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/google/dexmaker/dx/dex/file/EncodedArrayItem;

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->superclass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {v0, p1}, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstType;)Lcom/google/dexmaker/dx/dex/file/TypeIdItem;

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->interfaces:Lcom/google/dexmaker/dx/dex/file/TypeListItem;

    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {v3, p1}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->intern(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/google/dexmaker/dx/dex/file/TypeListItem;

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->interfaces:Lcom/google/dexmaker/dx/dex/file/TypeListItem;

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->sourceFile:Lcom/google/dexmaker/dx/rop/cst/CstString;

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {v4, p1}, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstString;)Lcom/google/dexmaker/dx/dex/file/StringIdItem;

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 161
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;->isInternable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 162
    iget-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v2, p1}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->intern(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)Lcom/google/dexmaker/dx/dex/file/OffsettedItem;

    move-result-object p1

    check-cast p1, Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

    goto :goto_0

    .line 164
    :cond_4
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v2, p0}, Lcom/google/dexmaker/dx/dex/file/MixedItemSection;->add(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public addDirectMethod(Lcom/google/dexmaker/dx/dex/file/EncodedMethod;)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->addDirectMethod(Lcom/google/dexmaker/dx/dex/file/EncodedMethod;)V

    return-void
.end method

.method public addInstanceField(Lcom/google/dexmaker/dx/dex/file/EncodedField;)V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->addInstanceField(Lcom/google/dexmaker/dx/dex/file/EncodedField;)V

    return-void
.end method

.method public addStaticField(Lcom/google/dexmaker/dx/dex/file/EncodedField;Lcom/google/dexmaker/dx/rop/cst/Constant;)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    invoke-virtual {p0, p1, p2}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->addStaticField(Lcom/google/dexmaker/dx/dex/file/EncodedField;Lcom/google/dexmaker/dx/rop/cst/Constant;)V

    return-void
.end method

.method public addVirtualMethod(Lcom/google/dexmaker/dx/dex/file/EncodedMethod;)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->addVirtualMethod(Lcom/google/dexmaker/dx/dex/file/EncodedMethod;)V

    return-void
.end method

.method public getInterfaces()Lcom/google/dexmaker/dx/rop/type/TypeList;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->interfaces:Lcom/google/dexmaker/dx/dex/file/TypeListItem;

    if-nez p0, :cond_0

    .line 256
    sget-object p0, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->EMPTY:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    return-object p0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/TypeListItem;->getList()Lcom/google/dexmaker/dx/rop/type/TypeList;

    move-result-object p0

    return-object p0
.end method

.method public getSuperclass()Lcom/google/dexmaker/dx/rop/cst/CstType;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->superclass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    return-object p0
.end method

.method public getThisClass()Lcom/google/dexmaker/dx/rop/cst/CstType;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->thisClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    return-object p0
.end method

.method public itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 0

    .line 117
    sget-object p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method

.method public writeSize()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public writeTo(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 172
    invoke-interface/range {p2 .. p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getTypeIds()Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    move-result-object v3

    .line 174
    iget-object v4, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->thisClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {v3, v4}, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstType;)I

    move-result v4

    .line 175
    iget-object v5, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->superclass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    const/4 v6, -0x1

    if-nez v5, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5}, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstType;)I

    move-result v3

    .line 177
    :goto_0
    iget-object v5, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->interfaces:Lcom/google/dexmaker/dx/dex/file/TypeListItem;

    invoke-static {v5}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)I

    move-result v5

    .line 178
    iget-object v7, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v7}, Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->annotationsDirectory:Lcom/google/dexmaker/dx/dex/file/AnnotationsDirectoryItem;

    invoke-virtual {v7}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v7

    .line 180
    :goto_1
    iget-object v9, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->sourceFile:Lcom/google/dexmaker/dx/rop/cst/CstString;

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStringIds()Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    move-result-object v6

    iget-object v9, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->sourceFile:Lcom/google/dexmaker/dx/rop/cst/CstString;

    invoke-virtual {v6, v9}, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstString;)I

    move-result v6

    .line 182
    :goto_2
    iget-object v9, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    invoke-virtual {v9}, Lcom/google/dexmaker/dx/dex/file/ClassDataItem;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v8

    goto :goto_3

    :cond_3
    iget-object v9, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->classData:Lcom/google/dexmaker/dx/dex/file/ClassDataItem;

    invoke-virtual {v9}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v9

    .line 183
    :goto_3
    iget-object v10, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->staticValuesItem:Lcom/google/dexmaker/dx/dex/file/EncodedArrayItem;

    invoke-static {v10}, Lcom/google/dexmaker/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/google/dexmaker/dx/dex/file/OffsettedItem;)I

    move-result v10

    if-eqz v2, :cond_7

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;->indexString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->thisClass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {v11}, Lcom/google/dexmaker/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  class_idx:           "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x4

    invoke-interface {v1, v11, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  access_flags:        "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->accessFlags:I

    invoke-static {v12}, Lcom/google/dexmaker/dx/rop/code/AccessFlags;->classString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  superclass_idx:      "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " // "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->superclass:Lcom/google/dexmaker/dx/rop/cst/CstType;

    const-string v14, "<none>"

    if-nez v13, :cond_4

    move-object v13, v14

    goto :goto_4

    :cond_4
    invoke-virtual {v13}, Lcom/google/dexmaker/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  interfaces_off:      "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    if-eqz v5, :cond_5

    .line 196
    iget-object v2, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->interfaces:Lcom/google/dexmaker/dx/dex/file/TypeListItem;

    invoke-virtual {v2}, Lcom/google/dexmaker/dx/dex/file/TypeListItem;->getList()Lcom/google/dexmaker/dx/rop/type/TypeList;

    move-result-object v2

    .line 197
    invoke-interface {v2}, Lcom/google/dexmaker/dx/rop/type/TypeList;->size()I

    move-result v13

    move v15, v8

    :goto_5
    if-ge v15, v13, :cond_5

    .line 199
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v15}, Lcom/google/dexmaker/dx/rop/type/TypeList;->getType(I)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/dexmaker/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v1, v11, v8}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    move v8, v11

    const/4 v11, 0x4

    goto :goto_5

    .line 202
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  source_file_idx:     "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->sourceFile:Lcom/google/dexmaker/dx/rop/cst/CstString;

    if-nez v8, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Lcom/google/dexmaker/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v14

    :goto_6
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    invoke-interface {v1, v8, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  annotations_off:     "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  class_data_off:      "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  static_values_off:   "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 211
    :cond_7
    invoke-interface {v1, v4}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 212
    iget v0, v0, Lcom/google/dexmaker/dx/dex/file/ClassDefItem;->accessFlags:I

    invoke-interface {v1, v0}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 213
    invoke-interface {v1, v3}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 214
    invoke-interface {v1, v5}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 215
    invoke-interface {v1, v6}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 216
    invoke-interface {v1, v7}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 217
    invoke-interface {v1, v9}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    .line 218
    invoke-interface {v1, v10}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    return-void
.end method
