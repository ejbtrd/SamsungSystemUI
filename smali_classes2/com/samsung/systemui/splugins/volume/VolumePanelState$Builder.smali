.class public Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
.super Ljava/lang/Object;
.source "VolumePanelState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState$1;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState$1;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 204
    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$202(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState$1;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 193
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$100(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$102(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/List;)Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$200(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$202(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 195
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$300(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$302(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 196
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$400(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$402(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 197
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$500(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$502(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 198
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$600(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$602(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 199
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$700(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$702(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-object p0
.end method

.method public setCustomState(Ljava/lang/Object;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$702(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$300(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$400(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$500(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$202(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-object p0
.end method

.method public setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$600(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->mSecVolumeState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->access$102(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method
