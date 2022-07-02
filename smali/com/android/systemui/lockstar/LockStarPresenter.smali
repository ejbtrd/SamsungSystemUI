.class public Lcom/android/systemui/lockstar/LockStarPresenter;
.super Ljava/lang/Object;
.source "LockStarPresenter.java"


# instance fields
.field final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->mCallbackMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onChangeEnable(Z)V
    .locals 1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;->onChangedLockStarEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateModifiers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "*>;>;)V"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;->onUpdateModifiers(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public unregisterCallback(Ljava/lang/String;)Z
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
