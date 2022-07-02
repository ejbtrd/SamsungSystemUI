.class public interface abstract Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
.super Ljava/lang/Object;
.source "NotificationLockscreenUserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$KeyguardNotificationSuppressor;,
        Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;
    }
.end annotation


# virtual methods
.method public abstract addKeyguardNotificationSuppressor(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$KeyguardNotificationSuppressor;)V
.end method

.method public abstract addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V
.end method

.method public abstract getCurrentUserId()I
.end method

.method public abstract isAnyProfilePublicMode()Z
.end method

.method public abstract isCurrentProfile(I)Z
.end method

.method public abstract isLockscreenPublicMode(I)Z
.end method

.method public abstract needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
.end method

.method public abstract setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
.end method

.method public abstract shouldAllowLockscreenRemoteInput()Z
.end method

.method public abstract shouldHideNotifications(I)Z
.end method

.method public abstract shouldHideNotifications(Ljava/lang/String;)Z
.end method

.method public abstract shouldShowLockscreenNotifications()Z
.end method

.method public abstract shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
.end method

.method public abstract updateLockscreenNotificationSetting()V
.end method

.method public abstract updatePublicMode()V
.end method

.method public abstract userAllowsNotificationsInPublic(I)Z
.end method

.method public abstract userAllowsPrivateNotificationsInPublic(I)Z
.end method
