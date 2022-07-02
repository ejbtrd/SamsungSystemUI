.class public interface abstract Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/PluginLockStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LockStarCallback"
.end annotation


# virtual methods
.method public onChangedLockStarEnabled(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateModifiers(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "*>;>;)V"
        }
    .end annotation

    return-void
.end method
