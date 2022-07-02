.class public interface abstract Lcom/android/systemui/facewidget/KeyguardStatusBase;
.super Ljava/lang/Object;
.source "KeyguardStatusBase.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# virtual methods
.method public abstract animate()Landroid/view/ViewPropertyAnimator;
.end method

.method public abstract dozeTimeTick()V
.end method

.method public abstract getClockView()Landroid/view/View;
.end method

.method public abstract getContentsContainers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public getCurrentClockType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getHeight()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getVisibility()I
.end method

.method public hasCustomClock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInContentBounds(F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMediaOutputRemoteviewsVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    return-void
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setAlpha(F)V
.end method

.method public setDarkAmount(F)V
    .locals 0

    return-void
.end method

.method public setExpandState(ZI)V
    .locals 0

    return-void
.end method

.method public setHasVisibleNotifications(Z)V
    .locals 0

    return-void
.end method

.method public setMediaOutputVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V
    .locals 0

    return-void
.end method

.method public showFaceWidgetDashBoard()V
    .locals 0

    return-void
.end method
