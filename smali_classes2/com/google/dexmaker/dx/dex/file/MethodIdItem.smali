.class public final Lcom/google/dexmaker/dx/dex/file/MethodIdItem;
.super Lcom/google/dexmaker/dx/dex/file/MemberIdItem;
.source "MethodIdItem.java"


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;-><init>(Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;->addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V

    .line 45
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getProtoIds()Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/MethodIdItem;->getMethodRef()Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/google/dexmaker/dx/rop/type/Prototype;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;->intern(Lcom/google/dexmaker/dx/rop/type/Prototype;)Lcom/google/dexmaker/dx/dex/file/ProtoIdItem;

    return-void
.end method

.method public getMethodRef()Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/MemberIdItem;->getRef()Lcom/google/dexmaker/dx/rop/cst/CstMemberRef;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;

    return-object p0
.end method

.method protected getTypoidIdx(Lcom/google/dexmaker/dx/dex/file/DexFile;)I
    .locals 0

    .line 61
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getProtoIds()Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/MethodIdItem;->getMethodRef()Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/google/dexmaker/dx/rop/type/Prototype;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/dexmaker/dx/dex/file/ProtoIdsSection;->indexOf(Lcom/google/dexmaker/dx/rop/type/Prototype;)I

    move-result p0

    return p0
.end method

.method protected getTypoidName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "proto_idx"

    return-object p0
.end method

.method public itemType()Lcom/google/dexmaker/dx/dex/file/ItemType;
    .locals 0

    .line 37
    sget-object p0, Lcom/google/dexmaker/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/google/dexmaker/dx/dex/file/ItemType;

    return-object p0
.end method
