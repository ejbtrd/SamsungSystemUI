.class public interface abstract Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;
.super Ljava/lang/Object;
.source "IEdgeLightingWindowCallback.java"


# virtual methods
.method public abstract doActionNotification(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "value"
        }
    .end annotation
.end method

.method public abstract onClickExpandButton(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract onClickToastInWindow()V
.end method

.method public abstract onDismissEdgeWindow()V
.end method

.method public abstract onExtendLightingDuration()V
.end method

.method public abstract onFling(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isDown",
            "isActivity"
        }
    .end annotation
.end method

.method public abstract onFlingDownInWindow(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActivity"
        }
    .end annotation
.end method

.method public abstract onShowEdgeWindow()V
.end method

.method public abstract onSwipeToastInWindow()V
.end method
