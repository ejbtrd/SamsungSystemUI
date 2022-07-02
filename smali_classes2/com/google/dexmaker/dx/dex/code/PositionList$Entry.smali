.class public Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;
.super Ljava/lang/Object;
.source "PositionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/dx/dex/code/PositionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private final address:I

.field private final position:Lcom/google/dexmaker/dx/rop/code/SourcePosition;


# direct methods
.method public constructor <init>(ILcom/google/dexmaker/dx/rop/code/SourcePosition;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const-string/jumbo v0, "position == null"

    .line 167
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    iput p1, p0, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;->address:I

    .line 171
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;->position:Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    return-void

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "address < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAddress()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;->address:I

    return p0
.end method

.method public getPosition()Lcom/google/dexmaker/dx/rop/code/SourcePosition;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/PositionList$Entry;->position:Lcom/google/dexmaker/dx/rop/code/SourcePosition;

    return-object p0
.end method
