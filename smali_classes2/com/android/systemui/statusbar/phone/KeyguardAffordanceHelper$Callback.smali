.class public interface abstract Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract forceReset()V
.end method

.method public abstract getKeyguardStatusView()Landroid/view/View;
.end method

.method public abstract getLockIconContainerView()Landroid/view/View;
.end method

.method public abstract getLockStarContainer()Landroid/view/View;
.end method

.method public abstract getMusicContainer()Landroid/view/View;
.end method

.method public abstract getNotificationIconsOnlyContainer()Landroid/view/View;
.end method

.method public abstract getNotificationStackScrollerView()Landroid/view/View;
.end method

.method public abstract onAnimationToSideEnded()V
.end method

.method public abstract onAnimationToSideStarted(ZFFZZ)V
.end method

.method public abstract onIconClicked(Z)V
.end method

.method public abstract onSwipingAborted()V
.end method

.method public abstract onSwipingStarted(Z)V
.end method

.method public abstract userActivity()V
.end method
