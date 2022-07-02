.class Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;
.super Landroid/database/ContentObserver;
.source "EdgeLightingSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentObserverWrapper"
.end annotation


# instance fields
.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addObserver(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method contains(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)Z
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onChange(Z)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

    .line 103
    invoke-interface {v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    new-instance v3, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper$1;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;->onChange(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeObserver(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method size()I
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
