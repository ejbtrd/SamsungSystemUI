.class public abstract Lcom/google/dexmaker/dx/dex/file/IdItem;
.super Lcom/google/dexmaker/dx/dex/file/IndexedItem;
.source "IdItem.java"


# instance fields
.field private final type:Lcom/google/dexmaker/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/dx/rop/cst/CstType;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/file/IndexedItem;-><init>()V

    const-string/jumbo v0, "type == null"

    .line 39
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/IdItem;->type:Lcom/google/dexmaker/dx/rop/cst/CstType;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/google/dexmaker/dx/dex/file/DexFile;)V
    .locals 0

    .line 48
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/DexFile;->getTypeIds()Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;

    move-result-object p1

    .line 49
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/IdItem;->type:Lcom/google/dexmaker/dx/rop/cst/CstType;

    invoke-virtual {p1, p0}, Lcom/google/dexmaker/dx/dex/file/TypeIdsSection;->intern(Lcom/google/dexmaker/dx/rop/cst/CstType;)Lcom/google/dexmaker/dx/dex/file/TypeIdItem;

    return-void
.end method

.method public final getDefiningClass()Lcom/google/dexmaker/dx/rop/cst/CstType;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/IdItem;->type:Lcom/google/dexmaker/dx/rop/cst/CstType;

    return-object p0
.end method
