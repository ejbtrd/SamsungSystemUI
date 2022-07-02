.class public Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
.super Ljava/lang/Object;
.source "VolumeStreamState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    .line 62
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$000(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$002(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)I

    .line 63
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$100(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$102(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 64
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$200(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$202(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 65
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$300(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$302(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    return-object p0
.end method

.method public setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$100(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$200(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$002(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)I

    return-object p0
.end method

.method public setStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->mVolumeStreamState:Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->access$300(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
