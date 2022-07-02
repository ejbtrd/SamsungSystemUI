.class public Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
.super Ljava/lang/Object;
.source "VolumePanelAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V
    .locals 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;Lcom/samsung/systemui/splugins/volume/VolumePanelAction$1;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 219
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$100(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$102(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 220
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$200(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$202(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumeState;)Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 221
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$300(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$302(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;

    .line 222
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$400(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$402(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;

    .line 223
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$500(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$502(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;

    .line 224
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$600(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$602(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;

    .line 225
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$700(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$702(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 226
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$800(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$802(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 227
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$900(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$902(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 228
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$1000(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$1002(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 229
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$1100(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$1102(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-object p0
.end method

.method public setCustomAction(Ljava/lang/Object;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$1102(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDisabledStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$602(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$900(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setEnabledStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$502(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$302(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$700(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$1000(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$800(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$402(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setVolumeState(Lcom/samsung/systemui/splugins/volume/VolumeState;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->mSecVolumeAction:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->access$202(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumeState;)Lcom/samsung/systemui/splugins/volume/VolumeState;

    return-object p0
.end method
