.class public abstract Lcom/google/dexmaker/dx/dex/file/MemberIdItem;
.super Lcom/google/dexmaker/dx/dex/file/IdItem;
.source "MemberIdItem.java"


# instance fields
.field private final cst:Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/google/dexmaker/dx/rop/cst/CstType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/dexmaker/dx/dex/file/IdItem;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstType;)V

    .line 41
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;->cst:Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/google/dexmaker/dx/dex/file/IdItem;->addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    .line 55
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStringIds()Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;->getRef()Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->getNat()Lcom/google/dexmaker/dx/rop/cst/CstNat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstNat;->getName()Lcom/google/dexmaker/dx/rop/cst/CstString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstString;)Lcom/google/dexmaker/dx/dex/file/StringIdItem;

    return-void
.end method

.method public final getRef()Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;->cst:Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;

    return-object p0
.end method

.method protected abstract getTypoidIdx(Lcom/google/dexmaker/dx/dex/file/DexFile;)I
.end method

.method protected abstract getTypoidName()Ljava/lang/String;
.end method

.method public writeSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final writeTo(Lcom/google/dexmaker/dx/dex/file/DexFile;Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 6

    .line 62
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getTypeIds()Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getStringIds()Lcom/google/dexmaker/dx/dex/file/StringIdsSection;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;->cst:Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;

    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->getNat()Lcom/google/dexmaker/dx/rop/cst/CstNat;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/IdItem;->getDefiningClass()Lcom/google/dexmaker/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstType;)I

    move-result v0

    .line 66
    invoke-virtual {v2}, Lcom/google/dexmaker/dx/rop/cst/CstNat;->getName()Lcom/google/dexmaker/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/dexmaker/dx/dex/file/StringIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/cst/CstString;)I

    move-result v1

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;->getTypoidIdx(Lcom/google/dexmaker/dx/dex/file/DexFile;)I

    move-result p1

    .line 69
    invoke-interface {p2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;->indexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;->cst:Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;

    invoke-virtual {v3}, Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  class_idx: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/dexmaker/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p2, v4, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;->getTypoidName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Lcom/google/dexmaker/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p0

    const-string p0, "  %-10s %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v4, p0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    const/4 p0, 0x4

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  name_idx:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/google/dexmaker/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p0, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 77
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/dexmaker/dx/util/Output;->writeShort(I)V

    .line 78
    invoke-interface {p2, p1}, Lcom/google/dexmaker/dx/util/Output;->writeShort(I)V

    .line 79
    invoke-interface {p2, v1}, Lcom/google/dexmaker/dx/util/Output;->writeInt(I)V

    return-void
.end method
