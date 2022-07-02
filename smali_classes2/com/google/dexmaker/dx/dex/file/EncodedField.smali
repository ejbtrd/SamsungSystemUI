.class public final Lcom/google/dexmaker/dx/dex/file/EncodedField;
.super Lcom/google/dexmaker/dx/dex/file/EncodedMember;
.source "EncodedField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/dexmaker/dx/dex/file/EncodedMember;",
        "Ljava/lang/Comparable<",
        "Lcom/google/dexmaker/dx/dex/file/EncodedField;",
        ">;"
    }
.end annotation


# instance fields
.field private final field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p2}, Lcom/google/dexmaker/dx/dex/file/EncodedMember;-><init>(I)V

    const-string p2, "field == null"

    .line 46
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/EncodedField;->field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 0

    .line 100
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getFieldIds()Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    move-result-object p1

    .line 101
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/EncodedField;->field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {p1, p0}, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;)Lcom/google/dexmaker/dx/dex/file/FieldIdItem;

    return-void
.end method

.method public compareTo(Lcom/google/dexmaker/dx/dex/file/EncodedField;)I
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/EncodedField;->field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    iget-object p1, p1, Lcom/google/dexmaker/dx/dex/file/EncodedField;->field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/cst/Constant;->compareTo(Lcom/google/dexmaker/dx/rop/cst/Constant;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/google/dexmaker/dx/dex/file/EncodedField;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/EncodedField;->compareTo(Lcom/google/dexmaker/dx/dex/file/EncodedField;)I

    move-result p0

    return p0
.end method

.method public encode(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;II)I
    .locals 3

    .line 135
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getFieldIds()Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/EncodedField;->field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {p1, v0}, Lcom/google/dexmaker/dx/dex/file/FieldIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;)I

    move-result p1

    sub-int p3, p1, p3

    .line 137
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/EncodedMember;->getAccessFlags()I

    move-result v0

    .line 139
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 140
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/EncodedField;->field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p4

    const-string p0, "  [%x] %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v2, p0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 142
    invoke-static {p3}, Lcom/google/dexmaker/dx/util/Leb128Utils;->unsignedLeb128Size(I)I

    move-result p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    field_idx:    "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p0, p4}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 144
    invoke-static {v0}, Lcom/google/dexmaker/dx/util/Leb128Utils;->unsignedLeb128Size(I)I

    move-result p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    access_flags: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/code/AccessFlags;->fieldString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p0, p4}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 149
    :cond_0
    invoke-interface {p2, p3}, Lcom/google/dexmaker/dx/util/Output;->writeUleb128(I)I

    .line 150
    invoke-interface {p2, v0}, Lcom/google/dexmaker/dx/util/Output;->writeUleb128(I)I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 64
    instance-of v0, p1, Lcom/google/dexmaker/dx/dex/file/EncodedField;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/dex/file/EncodedField;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/EncodedField;->compareTo(Lcom/google/dexmaker/dx/dex/file/EncodedField;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getRef()Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/EncodedField;->field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/EncodedField;->field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->hashCode()I

    move-result p0

    return p0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/EncodedField;->field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 88
    const-class v1, Lcom/google/dexmaker/dx/dex/file/EncodedField;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/EncodedMember;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Lcom/google/dexmaker/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/EncodedField;->field:Lcom/google/dexmaker/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 p0, 0x7d

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
