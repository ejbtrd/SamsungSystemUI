.class public interface abstract Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;
.super Ljava/lang/Object;
.source "SystemUIWallpaperBase.java"


# virtual methods
.method public applyBlur(F)V
    .locals 0

    return-void
.end method

.method public abstract cleanUp()V
.end method

.method public getCapturedWallpaper()Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isKeyguardShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOccluded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onBackDropLayoutChange()V
.end method

.method public abstract onDlsViewModeChanged(IZ)V
.end method

.method public abstract onFaceAuthError()V
.end method

.method public abstract onFingerprintAuthSuccess()V
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardShowing(Z)V
    .locals 0

    return-void
.end method

.method public onOccluded(Z)V
    .locals 0

    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onUnlock()V
.end method

.method public abstract reset()V
.end method

.method public abstract update()V
.end method

.method public abstract updateBlurState(Z)V
.end method

.method public updateDrawState(Z)V
    .locals 0

    return-void
.end method
