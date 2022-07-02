.class public interface abstract Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;
.super Ljava/lang/Object;
.source "EdgeLightingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEdgeAnimationListener"
.end annotation


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

.method public abstract onClickToast()V
.end method

.method public abstract onExtendDuration()V
.end method

.method public abstract onFinishAnimation()V
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

.method public abstract onLaunchPopupView(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActivity"
        }
    .end annotation
.end method

.method public abstract onSwipeNotification()V
.end method
