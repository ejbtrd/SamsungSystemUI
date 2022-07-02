.class public interface abstract Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;
.super Ljava/lang/Object;
.source "IEdgeLightingController.java"


# virtual methods
.method public abstract registerEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract showPreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "showMorphView"
        }
    .end annotation
.end method

.method public abstract startApplication([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainColor"
        }
    .end annotation
.end method

.method public abstract startEdgeEffect(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract stopApplication()V
.end method

.method public abstract stopEdgeEffect()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract unRegisterEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract updatePreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract updateText(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "isDirty"
        }
    .end annotation
.end method
