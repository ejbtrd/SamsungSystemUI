.class public final Lcom/google/dexmaker/dx/dex/code/DalvCode;
.super Ljava/lang/Object;
.source "DalvCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/dx/dex/code/DalvCode$AssignIndicesCallback;
    }
.end annotation


# instance fields
.field private catches:Lcom/google/dexmaker/dx/dex/code/CatchTable;

.field private insns:Lcom/google/dexmaker/dx/dex/code/DalvInsnList;

.field private locals:Lcom/google/dexmaker/dx/dex/code/LocalList;

.field private final positionInfo:I

.field private positions:Lcom/google/dexmaker/dx/dex/code/PositionList;

.field private unprocessedCatches:Lcom/google/dexmaker/dx/dex/code/CatchBuilder;

.field private unprocessedInsns:Lcom/google/dexmaker/dx/dex/code/OutputFinisher;


# direct methods
.method public constructor <init>(ILcom/google/dexmaker/dx/dex/code/OutputFinisher;Lcom/google/dexmaker/dx/dex/code/CatchBuilder;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "unprocessedInsns == null"

    .line 84
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "unprocessedCatches == null"

    .line 88
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iput p1, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->positionInfo:I

    .line 92
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/google/dexmaker/dx/dex/code/OutputFinisher;

    .line 93
    iput-object p3, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedCatches:Lcom/google/dexmaker/dx/dex/code/CatchBuilder;

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->catches:Lcom/google/dexmaker/dx/dex/code/CatchTable;

    .line 95
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->positions:Lcom/google/dexmaker/dx/dex/code/PositionList;

    .line 96
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->locals:Lcom/google/dexmaker/dx/dex/code/LocalList;

    .line 97
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->insns:Lcom/google/dexmaker/dx/dex/code/DalvInsnList;

    return-void
.end method

.method private finishProcessingIfNecessary()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->insns:Lcom/google/dexmaker/dx/dex/code/DalvInsnList;

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/google/dexmaker/dx/dex/code/OutputFinisher;

    invoke-virtual {v0}, Lcom/google/dexmaker/dx/dex/code/OutputFinisher;->finishProcessingAndGetList()Lcom/google/dexmaker/dx/dex/code/DalvInsnList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->insns:Lcom/google/dexmaker/dx/dex/code/DalvInsnList;

    .line 109
    iget v1, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->positionInfo:I

    invoke-static {v0, v1}, Lcom/google/dexmaker/dx/dex/code/PositionList;->make(Lcom/google/dexmaker/dx/dex/code/DalvInsnList;I)Lcom/google/dexmaker/dx/dex/code/PositionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->positions:Lcom/google/dexmaker/dx/dex/code/PositionList;

    .line 110
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->insns:Lcom/google/dexmaker/dx/dex/code/DalvInsnList;

    invoke-static {v0}, Lcom/google/dexmaker/dx/dex/code/LocalList;->make(Lcom/google/dexmaker/dx/dex/code/DalvInsnList;)Lcom/google/dexmaker/dx/dex/code/LocalList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->locals:Lcom/google/dexmaker/dx/dex/code/LocalList;

    .line 111
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedCatches:Lcom/google/dexmaker/dx/dex/code/CatchBuilder;

    invoke-interface {v0}, Lcom/google/dexmaker/dx/dex/code/CatchBuilder;->build()Lcom/google/dexmaker/dx/dex/code/CatchTable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->catches:Lcom/google/dexmaker/dx/dex/code/CatchTable;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/google/dexmaker/dx/dex/code/OutputFinisher;

    .line 115
    iput-object v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedCatches:Lcom/google/dexmaker/dx/dex/code/CatchBuilder;

    return-void
.end method


# virtual methods
.method public assignIndices(Lcom/google/dexmaker/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/google/dexmaker/dx/dex/code/OutputFinisher;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/OutputFinisher;->assignIndices(Lcom/google/dexmaker/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    return-void
.end method

.method public getCatchTypes()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/google/dexmaker/dx/rop/type/Type;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedCatches:Lcom/google/dexmaker/dx/dex/code/CatchBuilder;

    invoke-interface {p0}, Lcom/google/dexmaker/dx/dex/code/CatchBuilder;->getCatchTypes()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getCatches()Lcom/google/dexmaker/dx/dex/code/CatchTable;
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/DalvCode;->finishProcessingIfNecessary()V

    .line 196
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->catches:Lcom/google/dexmaker/dx/dex/code/CatchTable;

    return-object p0
.end method

.method public getInsnConstants()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/google/dexmaker/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/google/dexmaker/dx/dex/code/OutputFinisher;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/OutputFinisher;->getAllConstants()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getInsns()Lcom/google/dexmaker/dx/dex/code/DalvInsnList;
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/DalvCode;->finishProcessingIfNecessary()V

    .line 186
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->insns:Lcom/google/dexmaker/dx/dex/code/DalvInsnList;

    return-object p0
.end method

.method public getLocals()Lcom/google/dexmaker/dx/dex/code/LocalList;
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/DalvCode;->finishProcessingIfNecessary()V

    .line 216
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->locals:Lcom/google/dexmaker/dx/dex/code/LocalList;

    return-object p0
.end method

.method public getPositions()Lcom/google/dexmaker/dx/dex/code/PositionList;
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/google/dexmaker/dx/dex/code/DalvCode;->finishProcessingIfNecessary()V

    .line 206
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->positions:Lcom/google/dexmaker/dx/dex/code/PositionList;

    return-object p0
.end method

.method public hasAnyCatches()Z
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedCatches:Lcom/google/dexmaker/dx/dex/code/CatchBuilder;

    invoke-interface {p0}, Lcom/google/dexmaker/dx/dex/code/CatchBuilder;->hasAnyCatches()Z

    move-result p0

    return p0
.end method

.method public hasLocals()Z
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/google/dexmaker/dx/dex/code/OutputFinisher;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/OutputFinisher;->hasAnyLocalInfo()Z

    move-result p0

    return p0
.end method

.method public hasPositions()Z
    .locals 2

    .line 136
    iget v0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->positionInfo:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/google/dexmaker/dx/dex/code/OutputFinisher;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/OutputFinisher;->hasAnyPositionInfo()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
