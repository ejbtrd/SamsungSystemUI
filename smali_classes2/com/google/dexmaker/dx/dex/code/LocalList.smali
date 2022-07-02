.class public final Lcom/google/dexmaker/dx/dex/code/LocalList;
.super Lcom/google/dexmaker/dx/util/FixedSizeList;
.source "LocalList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/dx/dex/code/LocalList$MakeState;,
        Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;,
        Lcom/google/dexmaker/dx/dex/code/LocalList$Disposition;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/dexmaker/dx/dex/code/LocalList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/LocalList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/dexmaker/dx/dex/code/LocalList;-><init>(I)V

    sput-object v0, Lcom/google/dexmaker/dx/dex/code/LocalList;->EMPTY:Lcom/google/dexmaker/dx/dex/code/LocalList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static make(Lcom/google/dexmaker/dx/dex/code/DalvInsnList;)Lcom/google/dexmaker/dx/dex/code/LocalList;
    .locals 5

    .line 327
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/util/FixedSizeList;->size()I

    move-result v0

    .line 345
    new-instance v1, Lcom/google/dexmaker/dx/dex/code/LocalList$MakeState;

    invoke-direct {v1, v0}, Lcom/google/dexmaker/dx/dex/code/LocalList$MakeState;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 348
    invoke-virtual {p0, v2}, Lcom/google/dexmaker/dx/dex/code/DalvInsnList;->get(I)Lcom/google/dexmaker/dx/dex/code/DalvInsn;

    move-result-object v3

    .line 350
    instance-of v4, v3, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;

    if-eqz v4, :cond_0

    .line 351
    move-object v4, v3

    check-cast v4, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;

    invoke-virtual {v4}, Lcom/google/dexmaker/dx/dex/code/LocalSnapshot;->getLocals()Lcom/google/dexmaker/dx/rop/code/RegisterSpecSet;

    move-result-object v4

    .line 353
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getAddress()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/google/dexmaker/dx/dex/code/LocalList$MakeState;->snapshot(ILcom/google/dexmaker/dx/rop/code/RegisterSpecSet;)V

    goto :goto_1

    .line 354
    :cond_0
    instance-of v4, v3, Lcom/google/dexmaker/dx/dex/code/LocalStart;

    if-eqz v4, :cond_1

    .line 355
    move-object v4, v3

    check-cast v4, Lcom/google/dexmaker/dx/dex/code/LocalStart;

    invoke-virtual {v4}, Lcom/google/dexmaker/dx/dex/code/LocalStart;->getLocal()Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 356
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getAddress()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/google/dexmaker/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    .line 357
    :cond_1
    instance-of v4, v3, Lcom/google/dexmaker/dx/dex/code/LocalEnd;

    if-eqz v4, :cond_2

    .line 358
    move-object v4, v3

    check-cast v4, Lcom/google/dexmaker/dx/dex/code/LocalEnd;

    invoke-virtual {v4}, Lcom/google/dexmaker/dx/dex/code/LocalEnd;->getLocal()Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 359
    invoke-virtual {v3}, Lcom/google/dexmaker/dx/dex/code/DalvInsn;->getAddress()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/google/dexmaker/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {v1}, Lcom/google/dexmaker/dx/dex/code/LocalList$MakeState;->finish()Lcom/google/dexmaker/dx/dex/code/LocalList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(I)Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/util/FixedSizeList;->get0(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;

    return-object p0
.end method

.method public set(ILcom/google/dexmaker/dx/dex/code/LocalList$Entry;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/google/dexmaker/dx/util/FixedSizeList;->set0(ILjava/lang/Object;)V

    return-void
.end method
