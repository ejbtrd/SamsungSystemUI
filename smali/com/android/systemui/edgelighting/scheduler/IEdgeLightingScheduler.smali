.class public interface abstract Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;
.super Ljava/lang/Object;
.source "IEdgeLightingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;
    }
.end annotation


# virtual methods
.method public abstract doActionNotification(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyEdgeLightingPackageList(Z)V
.end method

.method public abstract notifyScreenOff()V
.end method

.method public abstract notifyScreenOn()V
.end method

.method public abstract notifyStatusBarOpen()V
.end method

.method public abstract onClickedToast()V
.end method

.method public abstract onDestroy(Landroid/content/Context;)V
.end method

.method public abstract onExtendDurationLighting()V
.end method

.method public abstract onFling(ZZ)V
.end method

.method public abstract onLaunchPopupView(Z)V
.end method

.method public abstract onSwipeToast()V
.end method

.method public abstract releaseWakeLock()V
.end method

.method public abstract setController(Landroid/content/Context;)V
.end method

.method public abstract setRequester(Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;)V
.end method

.method public abstract startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V
.end method

.method public abstract stopEdgeLighting(Ljava/lang/String;Ljava/lang/String;I)V
.end method
