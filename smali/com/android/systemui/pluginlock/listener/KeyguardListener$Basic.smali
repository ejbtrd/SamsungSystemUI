.class public interface abstract Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;
.super Ljava/lang/Object;
.source "KeyguardListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/listener/KeyguardListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Basic"
.end annotation


# virtual methods
.method public abstract onAodTransitionEnd()V
.end method

.method public abstract onBarStateChanged(I)V
.end method

.method public abstract onDensityOrFontScaleChanged()V
.end method

.method public abstract onEventReceived(Landroid/os/Bundle;)V
.end method

.method public abstract onFolderStateChanged(ZZ)V
.end method

.method public abstract onLocaleChanged()V
.end method

.method public abstract onRootViewAttached(Landroid/view/ViewGroup;)V
.end method

.method public abstract onSemBackupStatusChanged(Landroid/os/Bundle;)V
.end method

.method public abstract onStartedGoingToSleep(IZ)V
.end method

.method public abstract onStartedWakingUp()V
.end method

.method public abstract onWallpaperChanged(I)V
.end method

.method public abstract setQsExpansion(F)V
.end method
