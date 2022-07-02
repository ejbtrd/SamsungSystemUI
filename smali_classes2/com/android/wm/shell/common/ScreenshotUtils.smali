.class public Lcom/android/wm/shell/common/ScreenshotUtils;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;
    }
.end annotation


# direct methods
.method public static captureLayer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {v0, p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 42
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 45
    invoke-virtual {p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object p0

    .line 40
    invoke-static {p0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;
    .locals 1

    .line 97
    new-instance v0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 98
    invoke-static {p1, p2, v0}, Lcom/android/wm/shell/common/ScreenshotUtils;->captureLayer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 99
    iget-object p0, v0, Lcom/android/wm/shell/common/ScreenshotUtils$BufferConsumer;->mScreenshot:Landroid/view/SurfaceControl;

    return-object p0
.end method